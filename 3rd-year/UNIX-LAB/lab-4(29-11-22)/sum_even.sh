#!/bin/sh
echo "enter number to add all even numbers below that"
read num
i=2
while [ $i -lt $num ]
do
sum=$((sum+i))
i=$((i+2))
done
echo $sum
