#!/bin/sh

echo "Enter the numbers:"
read num1
read num2 
read num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
echo "$num1 is the greatest"
elif [ $num2 -lt $num3 ]
then
echo "$num3 is the gratest"
else
echo "$num2 is the greatest" 
fi
