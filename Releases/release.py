import logging
import os
import pathlib
import shutil
import subprocess
import tempfile
import xml.etree.ElementTree

"""Valid extensions of a plugin."""
plugin_exts = [".esl", ".esp", ".esm"]

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


def build_release(dir_src: os.PathLike, dir_dst: os.PathLike,
                  dir_ver: os.PathLike = None, arch_exe: os.PathLike = None,
                  arch_flags: ArchiveFlags = ArchiveFlags()):
    """Build a release archive.

    Args:
        dir_src: Source directory for which the archive is built.
            It must contain a Fomod subdirectory with Info.xml and
            ModuleConfig.xml. Furthermore it must contain all files specified
            in ModuleConfig.xml.
        dir_dst: Target directory for the release archive.
        dir_ver: Plugins are temporarily moved to this directory to manually
            add a version number to their description.
            If ommited, no version number is added.
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
    plugins_rel = list()  # Plugin paths relative to dir_src
    plugins_abs = list()  # Absolute plugin paths
    for sub_dir in sub_dirs:
        for plugin in find_plugins(os.path.join(dir_src, sub_dir)):
            plugins_rel.append(os.path.join(sub_dir, plugin))
            plugins_abs.append(os.path.join(dir_src, sub_dir, plugin))
    for file in loose_files:
        if os.path.splitext(os.path.basename(file))[1] in plugin_exts:
            plugins_rel.append(file)
            plugins_abs.append(os.path.join(dir_src, file))
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
            # Find a possible bsa name that matches a plugin
            bsa = None
            for plugin in plugins_rel:
                head, tail = os.path.split(plugin)
                if head == sub_dir:
                    bsa = "{}.bsa".format(os.path.splitext(tail)[0])
                    break
            if arch_exe and bsa:
                # Create subdirectory in the fomod tree
                os.mkdir(os.path.join(dir_temp, sub_dir))
                # Build the bsa
                src = os.path.join(dir_src, sub_dir)
                dst = os.path.join(dir_temp, sub_dir, bsa)
                build_bsa(src, dst, arch_exe, arch_flags)
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
        if dir_ver:
            version_plugins(plugins_abs, dir_ver, version)
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


def build_bsa(dir_src: os.PathLike, bsa_dst: os.PathLike,
              arch_exe: os.PathLike, arch_flags: ArchiveFlags):
    """Build a bsa.

    Args:
        dir_src: All valid files in this directory are packed into the bsa.
        bsa_dst: The bsa is created at this path.
            This is the final path e.g. /Some/Path/Mod.bsa.
        arch_exe: Path to Archive.exe, the executable that creates the bsa.
        arch_flags: Checks the corresponding options in Archive.exe.
    """
    # Some genius at Bethesda had the idea to assume that the first occurence
    # of "Data\" in a path must be Skyrim's Data directory. Thus the temporary
    # directory must not be created at the default location ..\AppData\Temp
    with tempfile.TemporaryDirectory(dir="C:\\Windows\\Temp") as dir_temp:
        # Another genius' idea: The root of the loose files must be Data
        path_root = os.path.join(dir_temp, "Data")
        shutil.copytree(dir_src, path_root)
        # Create manifest
        path_manifest = os.path.join(dir_temp, "Manifest.txt")
        with open(path_manifest, "w") as manifest:
            for root, subdirs, files in os.walk(dir_src):
                root_relative = pathlib.PurePath(root).relative_to(dir_src)
                for file in files:
                    path_relative = root_relative.joinpath(file)
                    first_dir = path_relative.parts[0]
                    if first_dir.lower() in bsa_include_dirs:
                        manifest.write("{}\n".format(path_relative))
        # Exit if manifest is empty because Archive.exe will crash
        if os.path.getsize(path_manifest) == 0:
            return
        # Create batch file
        path_batch = os.path.join(dir_temp, "Batch.txt")
        with open(path_batch, "w") as batch:
            path_log = os.path.basename(bsa_dst).replace(".bsa", ".log")
            batch.write("Log: {}\n".format(path_log))
            batch.write("New Archive\n")
            if arch_flags.check_meshes:
                batch.write("Check: Meshes\n")
            if arch_flags.check_textures:
                batch.write("Check: Textures\n")
            if arch_flags.check_menus:
                batch.write("Check: Menus\n")
            if arch_flags.check_sounds:
                batch.write("Check: Sounds\n")
            if arch_flags.check_voices:
                batch.write("Check: Voices\n")
            if arch_flags.check_shaders:
                batch.write("Check: Shaders\n")
            if arch_flags.check_trees:
                batch.write("Check: Trees\n")
            if arch_flags.check_fonts:
                batch.write("Check: Fonts\n")
            if arch_flags.check_misc:
                batch.write("Check: Misc\n")
            if arch_flags.check_compress_archive:
                batch.write("Check: Compress Archive\n")
            if arch_flags.check_retain_directory_names:
                batch.write("Check: Retain Directory Names\n")
            if arch_flags.check_retain_file_names:
                batch.write("Check: Retain File Names\n")
            if arch_flags.check_retain_file_name_offsets:
                batch.write("Check: Retain File Name Offsets\n")
            if arch_flags.check_retain_strings_during_startup:
                batch.write("Check: Retain Strings During Startup\n")
            if arch_flags.check_embed_file_name:
                batch.write("Check: Embed File Names\n")
            batch.write("Set File Group Root: {}{}\n".
                        format(path_root, os.sep))
            batch.write("Add File Group: {}\n".format(path_manifest))
            batch.write("Save Archive: {}\n".format(bsa_dst))
        # Build bsa
        cmd = [arch_exe, path_batch]
        sp = subprocess.run(cmd, stdout=subprocess.DEVNULL)
        sp.check_returncode()
        # Delete useless bsl file
        path_bsl = bsa_dst.replace(".bsa", ".bsl")
        os.remove(path_bsl)


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


def find_plugins(source_dir: os.PathLike):
    """Find all plugins in a directory. Does not search in subdirectories."""
    files = os.listdir(source_dir)
    return [f for f in files if os.path.splitext(f)[1] in plugin_exts]
