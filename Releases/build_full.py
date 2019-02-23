"""Build full release.
Loose files are packed into a bsa and version numbers are added."""
import config
import release

bsa_exclude = ["Requiem - Trade and Barter", "Requiem - Timing is Everything"]
release.build_release(dir_src=config.DIR_REPO_LE,
                      dir_ver=config.DIR_VER,
                      temp_alt=config.DIR_TEMP_ALT,
                      arch_exe=config.ARCH_EXE_LE,
                      bsa_exclude=bsa_exclude)
