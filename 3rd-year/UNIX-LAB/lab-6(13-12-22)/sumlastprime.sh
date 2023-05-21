#!/bin/sh

echo "Enter the number of numbers:"
read n
sum=0
count=0
flag=0
for i in $(seq $n -1 2)
do
	j=2
	while [ $j -le `expr $i / 2 ` ]
	do
		if [ `expr $i % $j` -eq 0 ]
		then
			flag=1
		fi
		j=`expr $j + 1`
	done 
	if test $flag -ne 1
	then
		sum=`expr $sum + $i`
		count=$(($count + 1))
		flag=0
	fi
	if [ $count -eq 2 ]
	then
		echo "The sum is :$sum"
		exit 0;
	fi
done
	
