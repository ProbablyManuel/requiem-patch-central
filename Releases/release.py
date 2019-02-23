import logging
import os
import pathlib
import shutil
import subprocess
import tempfile
import xml.etree.ElementTree

"""All files in these directories will be included in a bsa."""
bsa_include_dirs = ["interface", "meshes", "music", "textures", "scripts",
                    "seq", "shadersfx", "sound", "strings"]


class ArchiveFlags():
    """Flags for Archive.exe"""

    def __init__(self):
        self.check_meshes = False
        self.check_textures = False
        self.check_menus = False
        self.check_sounds = False
        self.check_voices = False
        self.check_shaders = False
        self.check_trees = False
        self.check_fonts = False
        self.check_misc = False
        self.check_compress_archive = False
        self.check_retain_directory_names = False
        self.check_retain_file_names = False
        self.check_retain_file_name_offsets = False
        self.check_retain_strings_during_startup = False
        self.check_embed_file_name = False


def build_release(dir_src: os.PathLike,
                  dir_dst: os.PathLike = os.getcwd(),
                  dir_ver: os.PathLike = None,
                  temp_alt: os.PathLike = None,
                  arch_exe: os.PathLike = None,
                  arch_flags: ArchiveFlags = ArchiveFlags()):
    """Build a release archive.

    Args:
        dir_src: Source directory for which the archive is built.
            It must contain a Fomod subdirectory with Info.xml and
            ModuleConfig.xml. Furthermore it must contain all files specified
            in ModuleConfig.xml.
        dir_dst: Target directory for the release archive. Defaults to the
            current working directory.
        dir_ver: Plugins are temporarily moved to this directory to manually
            add a version number to their description.
            If ommited, no version number is added.
        temp_alt: A directory whose path does not contain a directory that
            ends with "Data". Will be used to store temporary files during
            cration of the bsa.
            If ommited, no bsa is created.
        arch_exe: Path to Archive.exe, the executable that creates the bsa.
            If ommited, no bsa is created.
        arch_flags: Check the corresponding options in Archive.exe.
            If ommited, no flags are set.
    """
    logger = logging.getLogger(build_release.__name__)
    logger.setLevel(logging.INFO)
    handler = logging.FileHandler("{}.log".format(build_release.__name__), "w")
    formatter = logging.Formatter("%(asctime)s %(levelname)s %(message)s")
    handler.setFormatter(formatter)
    logger.addHandler(handler)
    logger.info("------------------------------------------------------------")
    logger.info("Building release")
    logger.info("Source directory: {}".format(dir_src))
    logger.info("Target directory: {}".format(dir_dst))
    logger.info("Add version number: {}".format(bool(dir_ver)))
    if dir_ver:
        logger.info("Versioning directory: {}".format(dir_ver))
    if temp_alt:
        logger.info("Alternate temporary directory: {}".format(temp_alt))
    logger.info("Build bsa: {}".format(bool(arch_exe)))
    if arch_exe:
        logger.info("Archive.exe path: {}".format(arch_exe))
    # Validate arguments
    dir_src_fomod = os.path.join(dir_src, "Fomod")
    if not os.path.isdir(dir_src):
        logger.error("Source directory does not exist")
        exit()
    if not os.path.isdir(dir_dst):
        logger.error("Target directory does not exist")
        exit()
    if dir_ver and not os.path.isdir(dir_ver):
        logger.error("Versioning directory does not exist")
        exit()
    if temp_alt and not os.path.isdir(temp_alt):
        logger.error("Alternate temporary directory does not exist")
        exit()
    if not os.path.isfile(os.path.join(dir_src_fomod, "Info.xml")):
        logger.error("Info.xml is missing in {}".format(dir_src_fomod))
        exit()
    if not os.path.isfile(os.path.join(dir_src_fomod, "ModuleConfig.xml")):
        logger.error("ModuleConfig.xml is missing in {}".format(dir_src_fomod))
        exit()
    if arch_exe and not os.path.isfile(arch_exe):
        logger.error("Archive.exe path does not exist")
        exit()
    if arch_exe and os.path.basename(arch_exe) != "Archive.exe":
        logger.error("Archive.exe path does not point to Archive.exe")
        exit()
    # Extract relevant information from fomod installation files
    name_release, version, sub_dirs, loose_files = parse_fomod(dir_src_fomod)
    plugins = [file for file in loose_files if is_plugin(file)]
    for sub_dir in sub_dirs:
        for plugin in find_plugins(os.path.join(dir_src, sub_dir)):
            plugins.append(os.path.join(sub_dir, plugin))
    # Validate subdirectories
    logger.info("Subdirectories required by the Fomod installer:")
    for sub_dir in sub_dirs:
        logger.info("   {}".format(sub_dir))
        if not os.path.isdir(os.path.join(dir_src, sub_dir)):
            logger.error("Subdirectory {} is missing".format(sub_dir))
            exit()
        if len(find_plugins(os.path.join(dir_src, sub_dir))) > 1:
            logger.warning("Subdirectory {} contains multiple plugins".
                           format(sub_dir))
    # Validate loose files
    logger.info("Loose files required by the Fomod installer:")
    for file in loose_files:
        logger.info("   {}".format(file))
        if not os.path.isfile(os.path.join(dir_src, file)):
            logger.error("Loose file {} is missing".format(file))
            exit()
    # Validate modgroups
    for sub_dir in sub_dirs:
        for file in loose_files:
            (head, tail) = os.path.split(file)
            if (head == "Modgroups" and os.path.splitext(tail)[0] == sub_dir):
                break
        else:
            logger.warning("Modgroups for {} not found".format(sub_dir))
    # Check readmes
    for sub_dir in sub_dirs:
        for file in loose_files:
            (head, tail) = os.path.split(file)
            if (head == "Readme" and os.path.splitext(tail)[0] == sub_dir):
                break
        else:
            logger.warning("Readme for {} not found".format(sub_dir))
    # Build fomod tree in a temporary directory
    with tempfile.TemporaryDirectory() as dir_temp:
        # Copy fomod files to the fomod tree
        src = os.path.join(dir_src, "Fomod")
        dst = os.path.join(dir_temp, "Fomod")
        shutil.copytree(src, dst)
        # Copy subdirectories to the fomod tree
        for sub_dir in sub_dirs:
            # Find a possible bsa name
            bsa = find_bsa_name(os.path.join(dir_src, sub_dir))
            if bsa and temp_alt and arch_exe:
                os.mkdir(os.path.join(dir_temp, sub_dir))
                # Build the bsa
                src = os.path.join(dir_src, sub_dir)
                dst = os.path.join(dir_temp, sub_dir, bsa)
                build_bsa(src, dst, temp_alt, arch_exe, arch_flags)
                # Copy all files that aren't packed in the bsa
                for path in os.listdir(os.path.join(dir_src, sub_dir)):
                    src = os.path.join(dir_src, sub_dir, path)
                    dst = os.path.join(dir_temp, sub_dir, path)
                    if os.path.isfile(src):
                        shutil.copy2(src, dst)
                    elif os.path.isdir(src):
                        if path.lower() not in bsa_include_dirs:
                            shutil.copytree(src, dst)
            else:
                # Copy everything
                src = os.path.join(dir_src, sub_dir)
                dst = os.path.join(dir_temp, sub_dir)
                shutil.copytree(src, dst)
        # Copy loose files to the fomod tree
        for file in loose_files:
            src = os.path.join(dir_src, file)
            dst = os.path.join(dir_temp, file)
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            shutil.copy2(src, dst)
        # Add version number to plugins
        plugins_fomod = [os.path.join(dir_temp, p) for p in plugins]
        if dir_ver:
            version_plugins(plugins_fomod, dir_ver, version)
        # Validate version stamp on plugins
        version_stamp = bytes("Version: {}".format(version), "utf8")
        for plugin in plugins_fomod:
            with open(plugin, "rb") as fh:
                if version_stamp not in fh.read():
                    logger.warning("{} does not have the correct version "
                                   "stamp".format(os.path.basename(plugin)))
        # Pack fomod tree into a 7zip archive
        file_archive = "{} {}.7z".format(name_release, version)
        # Remove whitespaces from archive name because GitHub doesn't like them
        file_archive = "_".join(file_archive.split())
        src = os.path.join(dir_temp, "*")
        dst = os.path.join(dir_dst, file_archive)
        if os.path.isfile(dst):
            os.remove(dst)
        cmd = ["7z", "a", dst, src]
        sp = subprocess.run(cmd, stdout=subprocess.DEVNULL)
        sp.check_returncode()
        logger.info("Succesfully built archive for {} of {}".
                    format(version, name_release))
    logger.removeHandler(handler)


def build_bsa(dir_src: os.PathLike, bsa: os.PathLike, temp_alt: os.PathLike,
              arch_exe: os.PathLike, arch_flags: ArchiveFlags):
    """Build a bsa.

    Args:
        dir_src: All valid files in this directory are packed into the bsa.
        bsa: The bsa is created at this path.
            This is the final path e.g. /Some/Path/Mod.bsa.
        temp_alt: A directory whose path does not contain a directory that
            ends with "Data". Will be used to store temporary files.
        arch_exe: Path to Archive.exe, the executable that creates the bsa.
        arch_flags: Checks the corresponding options in Archive.exe.

    Some genius at Bethesda imposed two constraint regarding Archive.exe:
        1. The loose files must be in a directory that ends with "Data".
        2. The path to that directory must not contain another directory that
            ends with "Data".
    As luck would have it the default location for temporary files has such a
        directory, namely AppData. Thus another location must be used.
    """
    with tempfile.TemporaryDirectory(dir=temp_alt, suffix="Data") as dir_temp:
        # Create manifest and copy files to temporary directory
        manifest = os.path.join(dir_temp, "Manifest.txt")
        with open(manifest, "w") as fh:
            for root, subdirs, files in os.walk(dir_src):
                root_rel = pathlib.PurePath(root).relative_to(dir_src)
                for file in files:
                    path_rel = root_rel.joinpath(file)
                    first_dir = path_rel.parts[0]
                    if first_dir.lower() in bsa_include_dirs:
                        fh.write("{}\n".format(path_rel))
                    src = os.path.join(root, file)
                    dst = os.path.join(dir_temp, path_rel)
                    os.makedirs(os.path.dirname(dst), exist_ok=True)
                    shutil.copyfile(src, dst)
        # Exit if manifest is empty because Archive.exe will crash
        if os.path.getsize(manifest) == 0:
            return
        # Create batch file
        batch = os.path.join(dir_temp, "Batch.txt")
        with open(batch, "w") as fh:
            log = "{}.log".format(os.path.splitext(os.path.basename(bsa))[0])
            fh.write("Log: {}\n".format(log))
            fh.write("New Archive\n")
            if arch_flags.check_meshes:
                fh.write("Check: Meshes\n")
            if arch_flags.check_textures:
                fh.write("Check: Textures\n")
            if arch_flags.check_menus:
                fh.write("Check: Menus\n")
            if arch_flags.check_sounds:
                fh.write("Check: Sounds\n")
            if arch_flags.check_voices:
                fh.write("Check: Voices\n")
            if arch_flags.check_shaders:
                fh.write("Check: Shaders\n")
            if arch_flags.check_trees:
                fh.write("Check: Trees\n")
            if arch_flags.check_fonts:
                fh.write("Check: Fonts\n")
            if arch_flags.check_misc:
                fh.write("Check: Misc\n")
            if arch_flags.check_compress_archive:
                fh.write("Check: Compress Archive\n")
            if arch_flags.check_retain_directory_names:
                fh.write("Check: Retain Directory Names\n")
            if arch_flags.check_retain_file_names:
                fh.write("Check: Retain File Names\n")
            if arch_flags.check_retain_file_name_offsets:
                fh.write("Check: Retain File Name Offsets\n")
            if arch_flags.check_retain_strings_during_startup:
                fh.write("Check: Retain Strings During Startup\n")
            if arch_flags.check_embed_file_name:
                fh.write("Check: Embed File Names\n")
            fh.write("Set File Group Root: {}{}\n".format(dir_temp, os.sep))
            fh.write("Add File Group: {}\n".format(manifest))
            fh.write("Save Archive: {}\n".format(bsa))
        # Build bsa
        cmd = [arch_exe, batch]
        sp = subprocess.run(cmd, stdout=subprocess.DEVNULL)
        sp.check_returncode()
        # Delete useless bsl file
        bsl = "{}.bsl".format(os.path.splitext(bsa)[0])
        os.remove(bsl)


def version_plugins(plugins: list, dir_ver: os.PathLike, version: str):
    """Add a version number to the description of plugins.
        Since modifying the description of a plugin requires a dedicated
        application, the plugins are temporarily moved to another directory.
        Then the function pauses until the user confirms that the version
        numbers have been added.

    Args:
        plugins: List of paths to the plugins.
        dir_ver: Plugins are temporarily moved to this directory to manually
            add a version number to their description.
        version: The version number.
    """
    for plugin in plugins:
        src = plugin
        dst = os.path.join(dir_ver, os.path.basename(plugin))
        shutil.move(src, dst)
    print("Update the version stamp of all", len(plugins), "plugins to",
          version)
    input("Press any key to continue")
    for plugin in plugins:
        src = os.path.join(dir_ver, os.path.basename(plugin))
        dst = plugin
        shutil.move(src, dst)


def parse_fomod(dir_fomod: os.PathLike) -> (str, str, list, list):
    """Extract relevant information from fomod installation files.

    Args:
        dir_fomod: Directory that contains Info.xml and ModuleConfig.xml.

    Return:
        Extracted information (name, version, sub_dirs, loose_files).
        name: First <name> tag in Info.xml.
        version: First <version> tag in Info.xml.
        sub_dirs: All <folder> tags in ModlueConfig.xml.
        loose_files: All <file> tags in ModlueConfig.xml.
    """
    path = os.path.join(dir_fomod, "Info.xml")
    root = xml.etree.ElementTree.parse(path).getroot()
    version = root.find("Version").text
    name = root.find("Name").text

    path = os.path.join(dir_fomod, "ModuleConfig.xml")
    root = xml.etree.ElementTree.parse(path).getroot()
    sub_dirs = list()
    loose_files = list()
    for installSteps in root.iterfind("installSteps"):
        for installStep in installSteps.iterfind("installStep"):
            for fileGroups in installStep.iterfind("optionalFileGroups"):
                for group in fileGroups.iterfind("group"):
                    for plugins in group.iterfind("plugins"):
                        for plugin in plugins.iterfind("plugin"):
                            for files in plugin.iterfind("files"):
                                for folder in files.iterfind("folder"):
                                    sub_dirs.append(folder.get("source"))
                                for file in files.iterfind("file"):
                                    loose_files.append(file.get("source"))
    for conditionalFileInstalls in root.iterfind("conditionalFileInstalls"):
        for patterns in conditionalFileInstalls.iterfind("patterns"):
            for pattern in patterns.iterfind("pattern"):
                for files in pattern.iterfind("files"):
                    for folder in files.iterfind("folder"):
                        sub_dirs.append(folder.get("source"))
                    for file in files.iterfind("file"):
                        loose_files.append(file.get("source"))
    return (name, version, sub_dirs, loose_files)


def find_bsa_name(path: os.PathLike) -> str:
    """Find a bsa name that matches a plugin found in the directory.

    Args:
        path: bsa name must match a plugin in this directory.

    Returns:
        A bsa name or an empty string if no matching name is found.
    """
    plugins = find_plugins(path)
    if plugins:
        return "{}.bsa".format(os.path.splitext(plugins[0])[0])
    return ""


def find_plugins(source_dir: os.PathLike):
    """Find all plugins in a directory. Does not search in subdirectories."""
    return [file for file in os.listdir(source_dir) if is_plugin(file)]


def is_plugin(path: os.PathLike) -> bool:
    """Return True if the path has the extension of a plugin."""
    plugin_exts = [".esl", ".esp", ".esm"]
    return os.path.splitext(path)[1] in plugin_exts
