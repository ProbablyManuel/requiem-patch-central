"""Build full release.
Loose files are packed into a bsa and version numbers are added."""
from config import *
import release

release.build_release(DIR_REPO_LE, dir_ver=DIR_VER, arch_exe=ARCH_EXE_LE)
