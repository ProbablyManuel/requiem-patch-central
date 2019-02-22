"""Add version number to all plugins for Legendary Edition."""
import config
import release

old_version = input("Enter Old Version: ")
release.version_plugins(config.dir_le, old_version)
