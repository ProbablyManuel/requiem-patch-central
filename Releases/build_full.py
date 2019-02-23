"""Build full release.
Loose files are packed into a bsa and version numbers are added."""
import config
import release

release.build_release(config.DIR_REPO_LE, config.DIR_REPO_REL, config.DIR_VER, config.ARCH_EXE_LE)
