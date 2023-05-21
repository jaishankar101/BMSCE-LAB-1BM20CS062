#!/bin/sh

if [ $# -eq 0 -o $# -eq 1 -o $# -gt 2 ]
then
echo "Enter TWO arguments"
exit 1
elif [ $1 = $2 ]
then
echo "$1 is equal to $2"
else
echo "$1 is not equal to $2"
fi
