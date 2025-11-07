#!/bin/zsh

if [ $# -eq 0 ] ; then
	echo "Usage: $0 requires argument"
	exit 1
fi
echo $1
exit 0
