#!/bin/sh

if [ $# -eq 0 ]
then
	echo "Error:enter file arguments to execute"
	exit 1
fi

echo  "enter the word:"
read word

echo "before file removal:"
for file in "$@"
do
	cat $file
done
for file in "$@"
do
	grep -v  $word $file > $temp
	mv $temp $file
	
done

echo  "after file removal:"
for file in "$@"
do
	cat $file
done
