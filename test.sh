#!/usr/bin/env bash

# Generate a list of all the dotfiles
rawdotfiles=(.*)
echo "{$pwd}"

# create symlinks in home for every file in the raw dot files
#for file in rawdotfiles; do
#	
#	if [ $file -eq ".git" -o $file -eq "." ]; then
#		continue
#	fi
#
#	# Create a symlink in the home folder to the dot file
#	ln -s ".{$file}" "${HOME}/${file}"
#done
