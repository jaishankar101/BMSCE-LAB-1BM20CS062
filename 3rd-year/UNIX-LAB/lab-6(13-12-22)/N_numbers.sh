#!/bin/sh

echo "Enter the number of numbers:"
read n
countpos=0
sumpos=0
countneg=0
sumneg=0
echo "Enter $n Numbers:"
for i in $( seq 1 1 $n )
do
	read temp
	if [ $temp -gt 0 ]
	then
		countpos=` expr $countpos + 1 `
		sumpos=$(($sumpos + $temp))
	else
		countneg=`expr $countneg + 1`
		sumneg=$(($sumneg + $temp))
	fi
done

echo "The number of positive numbers is:$countpos"
echo "The sum of positive numbers is:$sumpos"
echo "The number of negative numbers is:$countneg"
echo "The sum of negative numbers is:$sumneg"
		

