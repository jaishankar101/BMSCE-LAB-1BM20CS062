#!/bin/sh

echo "Enter the marks:"
read marks

if [ $marks -ge 90 ]
then 
echo "S grade"
elif [ $marks -ge 80 ]
then
echo "A grade"
elif [ $marks -ge 70 ]
then
echo "B grade"
elif [ $marks -ge 60 ]
then
echo "C grade"
elif [ $marks -ge 50 ]
then
echo "D grade"
elif [ $marks -ge 40 ]
then
echo "E grade"
else
echo "F grade"
fi
