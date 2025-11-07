#!/bin/zsh

echo "input string one: " ; read STRING1
echo "Input string two: " ; read STRING2

if [[ ${#STRING1} == 0 ]] ; then
	echo "String one has no input"
fi
if [[ ${#STRING2} !=  0 ]] ; then
	echo "String two has input"
fi

if [[ $STRING1 == $STRING2 ]] ; then
	echo "The strings are the same!"
fi
