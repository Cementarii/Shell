#!/bin/zsh

#Input operation type (sum, sub, div, or mul) and two numbers as paremeters

sum() {
	echo "result: $(($1 + $2))"
	exit 0
}
sub() {
	echo "result: $(($1 - $2))"
	exit 0
}
div() {
	if [[ $2 -eq 0 ]] ; then
		echo "0 not elligible divisor"
		exit 1
	fi
	echo "result: $(($1 / $2))"
	exit 0
}
mul() {
	echo "result: $(($1 * $2))"
	exit 0
}
if [[ $1 == "sum" ]] ; then
	sum $2 $3
elif [[ $1 == "sub" ]] ; then
	sub $2 $3
elif [[ $1 == "div" ]] ; then
	div $2 $3
elif [[ $1 == "mul" ]] ; then
	mul $2 $3
else
	echo "Please input the right parameter"
	exit 1
fi
#This can be improved on by passing the execution parameters as variables to avoid having to pass the original paremeters as parameters to the functions
