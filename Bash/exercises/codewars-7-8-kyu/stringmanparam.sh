#!/bin/bash

if [[ $# -lt 2 ]] ; then
	echo "Usage: Input two parameters"
	exit 1
fi

STR1=$1
STR2=$2

if [[ ${#STR1} == 0 ]] ; then
	echo "String one has no characters"
fi
if [[ ${#STR2} != 0 ]] ; then
	echo "String two has characters"
fi
if [[ $STR1 == $STR2 ]] ; then
	echo "Strings are the same"
else
	echo "Strings are not the same"
fi	
