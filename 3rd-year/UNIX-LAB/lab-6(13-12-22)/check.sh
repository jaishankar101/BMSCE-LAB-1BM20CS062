#!/bin/sh

if [ $# -ne 1 ]
then
	echo "Enter 1 file parameter"
else
	echo "Number of lines: `wc -l < $1` "
	echo "Number of words: `wc -w < $1` "
	echo "Number of characters: `wc -c < $1` "
fi 
