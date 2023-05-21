#!/bin/sh

echo "Enter the limit:"
read n

n1=0
n2=1
if [ $n -eq 0 ]
then 
	echo "Enter valid limit"
	exit 1
fi

echo "The Sequence is:"
if [ $n -eq 1 ]
then
	echo $n1
elif [ $n -eq 2 ]
then
	echo $n1
	echo $n2
elif [ $n -gt 2 ]
then
	echo $n1
	echo $n2
	for i in $(seq 3 1 $n)
	do
		n3=$(($n1+$n2))
		echo $n3
		n1=$n2
		n2=$n3
	done
fi
	
