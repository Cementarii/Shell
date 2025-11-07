#!/bin/bash

xxd -r data.txt > file

while true ; do
	sleep 2
	TYP=$(file -b file)
	case $TYP in
		*gzip*)
			echo "decompressing gz"
			mv file file.gz
			gunzip file.gz
			;;
		*bzip2*)
			echo "decompressing bz2"
			mv file file.bz2
			bunzip2 file.bz2
			;;
		*xz*)
			echo "decompressing xz"
			mv file file.xz
			unxz file.xz
			;;
		*tar*)
			echo "tar ball found ; extracting..."
			mkdir extract_tar
			mv file extract_tar/file ; cd extract_tar
			tar -xf file && rm -rf file
			mv ./* ../file
			cd ..
			;;
		*ASCII*)
			echo -e "text file found\n--\n$(cat file)\n--"
			break 0
			;;
		*)
			echo "Unknown type"
			break 1
			;;
	esac
done
