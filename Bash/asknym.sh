#!/bin/zsh

RC=0

echo "Please input a number (1, 2, 3): "
read num
function1() {
	echo "I am function one"
}
function2() {
	echo "I am function two"
}
function3() {
	echo "I am function three"
}
if [ $num -eq 1 ]
then
	function1
else
	if [ $num -eq 2 ]; then
		function2
	elif [ $num -eq 3 ]; then
		function3
	else
		echo "Please input an elligible integer"
		RC=1
		exit $RC
	fi
fi
exit $RC
