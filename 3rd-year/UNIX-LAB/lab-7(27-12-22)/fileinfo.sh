#!/bin/sh

if [ $# -eq 0 ]
then
	echo "Error:enter file argumets to execute"
	exit 1
fi



for file in $@
do
	if [ ! -f $file ]
	then
		echo "$file does not exist"
		exit 1
	fi
	if test -d $file
	then	
		ls -ld $file>test
		cut -b |test
		cut -d "" -f 2 test
		cut -d "" -f 1 test
		cut -d "" -f 8 test
		rm test
	else
		ls -l $file>test
		cut -b |test
		cut -d "" -f 2 test
		cut -d "" -f 1 test
		cut -d "" -f 8 test
		rm test
done

