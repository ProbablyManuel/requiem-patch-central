"""Global variables for Requiem Patch Central build system"""
import os

DIR_REPO = "C:\\Users\\user\\Documents\\GitHub\\requiem-patch-central"
"""Directory where the git repository for Requiem Patch Central is stored."""

DIR_REPO_LE = DIR_REPO
"""Directory where all mod files for Legendary Edition are stored."""

DIR_VER = "C:\\Users\\user\\Documents\\Skyrim Tools\\Mod Organizer\\mods\\RPC Release"
"""Directory where verion number is manually added to plugins."""

DIR_TEMP_ALT = "C:\\Windows\\Temp"
"""Directory where temporary files can be stored.
The path must not contain a directory that ends with "Data"."""

DIR_SKYRIM_LE = "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Skyrim"
"""Directory where Skyrim Legendary Edition is installed."""

DIR_SKYRIM_SE = "C:\\Program Files (x86)\\Steam\\steamapps\\common\\SkyrimSpecialEdition"
"""Directory where Skyrim Special Edition is installed."""

ARCH_EXE_LE = os.path.join(DIR_SKYRIM_LE, "Archive.exe")
"""Path to Archive.exe for Legendary Edition"""

ARCH_EXE_SE = os.path.join(DIR_SKYRIM_SE, "Tools\\Archive\\Archive.exe")
"""Path to Archive.exe for Special Edition"""
