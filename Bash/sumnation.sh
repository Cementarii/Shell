#!/bin/bash

num=$1
sum=0

for (( i = 1 ; i <= $num ; i = i +1 )) ; do
	sum=$(($sum + $i))	
done
echo $sum
