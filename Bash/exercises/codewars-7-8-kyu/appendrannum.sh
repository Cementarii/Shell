#!/bin/bash

[[ $# -eq 0 ]] && echo "Please enter a parameter string" ; exit 1

#also works: 
#if [[ $# -eq 0 ]] ; then
#	echo "Please enter a parameter string"
#	exit 1
#fi

echo "$1-$RANDOM"
exit 0
