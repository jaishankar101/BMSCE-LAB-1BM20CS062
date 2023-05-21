#!/bin/sh
echo "enter the file name"
read file
echo "no of lines in $file"
wc -l $file
echo "no of words in $file"
wc -w $file
echo "no of charactars in $file"
wc -c $file
