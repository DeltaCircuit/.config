#!/bin/bash
mkdir -p ~/.config

folders=$(find ./.config -maxdepth 1 -mindepth 1 -type d)

for folder in $folders
do
	echo "symlinking $folder"
	full_path=$(readlink -f $folder)
	folder_path="${full_path##*/}"
	ln -s $full_path ~/.config
done

