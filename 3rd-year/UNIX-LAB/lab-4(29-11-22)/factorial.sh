#!/bin/sh
echo "enter number"
read num
fact=1
while [ $num -gt 1 ]
do
fact=`expr $fact \* $num`
num=$((num - 1))
done
echo $fact
