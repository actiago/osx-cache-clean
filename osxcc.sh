#!/usr/bin/env bash

# Author Tiago Amaral https://github.com/cegohub

# Vars
CacheSize="$(du -hsc ~/Library/Caches | awk 'NR==1{print $1}')"
AvailableSpace="$(df -h / | tail -1 | awk '{print $4}')"

# Run
echo "* Verifying files in apps cache directory"
echo " "
echo "* Available space in the disk $AvailableSpace"
echo " "
read -p "* Do you want to remove $CacheSize of space in your disk? y/N: " -n2 Option
echo " "

	if [ $Option == 'y' ]; then
 		echo "Deleting files"
			cd ~/Library/Caches
			rm -rf * 2>/dev/null
		echo " "
		echo "You removed $CacheSize of files and now you have $AvailableSpace of available space in your disk. Thank you!"
	else
		echo "Canceled."
	fi
