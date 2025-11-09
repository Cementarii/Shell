#!/bin/bash

echo "please enter OPERATION (a, s, d, m): "
read OP
OP=$(echo $OP | tr [:upper:] [:lower:])
echo "please enter first num: "
read NUM1

echo "Please enter second num: "
read NUM2

sum () {
	echo $(($NUM1 + $NUM2))
}

subtract () {
	echo $(($NUM1 - $NUM2))
}
multiply () {
	echo $(($NUM1 * $NUM2))
}
divide () {
	if [[ $NUM2 -eq 0 ]] ; then echo "Cannot divide by zero" ; exit 1 ; fi
	echo $(($NUM1 / $NUM2))
}
case $OP in
  a)
    sum
    ;;
  s)
    subtract
    ;;
  m)
    multiply
    ;;
  d) 
    divide
    ;;
  *)
    echo "Non-existent operation"
    exit 1
esac

exit 0
