#!/bin/sh

if [ $# -eq 0 ]
then
	echo "Error:enter arguments to execute"
	exit 1
fi

echo "File name:$0"
temp=1
for file in "$@"
do
	echo "argument$temp:$file"
	temp=$((temp+1))
done
echo "arguments count:$#"
echo "arguments list in string:$*"
