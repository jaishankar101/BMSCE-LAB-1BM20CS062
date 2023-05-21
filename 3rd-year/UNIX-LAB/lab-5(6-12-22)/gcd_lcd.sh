#!/bin/sh

echo "Enter a:"
read a
echo "Enter b:"
read b

min=$a
if [ $b -lt $min ]
then
	min=$b
fi


while [ $min -ne 0 ]
do
	temp1=`expr $a % $min`
	temp2=`expr $b % $min`
	if [ $temp1 -eq 0 -a $temp2 -eq 0 ]
	then
		echo "Gcd of $a and $ is:$min"
		echo Lcm of $a and $b is:` expr $a \* $b / $min `
		exit 1
	fi
	min=$(($min-1))
done

