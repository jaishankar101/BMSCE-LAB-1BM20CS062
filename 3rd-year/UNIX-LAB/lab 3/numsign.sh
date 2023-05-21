#!/bin/sh

echo "Enter the number:"
read num

if [ $num -eq 0 ]
then 
echo "The number $num is a Zero"
elif [ $num -gt 0 ]
then
echo "The number $num is positive"
else
echo "The number $num is negative"
fi
