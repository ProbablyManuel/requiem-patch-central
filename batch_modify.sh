#!/bin/bash

set -euo pipefail


target_dir="/c/Skyrim Tools/Mod Organizer SSE/mods/RPC Release"

mv */*.esp "${target_dir}"

read -p "Press Enter when you have finished modifying the files"

for plugin in "${target_dir}"/*.esp; do
	plugin_basename="$(basename "${plugin}" .esp)"
	mv "${plugin}" "${plugin_basename}/${plugin_basename}.esp"
done
