#!/bin/zsh

echo "Input number (1/2): "
read num

if [ $num -eq 1 ]; then
	env="Yes"
elif [ $num -eq 2 ]; then
	env="No"
else
	echo "Error. Please write 1 or 2"
	exit 1
fi

export MYVAR=$env
echo $env

exit 0
