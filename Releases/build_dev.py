"""Build development archive.
Loose files are not packed into a bsa and version numbers are not added."""
import config
import release

release.build_release(config.DIR_REPO_LE, config.DIR_REPO_REL)
