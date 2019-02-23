"""Build development archive.
Loose files are not packed into a bsa and version numbers are not added."""
from config import *
import release

release.build_release(DIR_REPO_LE)
