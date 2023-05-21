#!/bin/sh
if [ $# -lt 1 ]
then
	echo "enter min. 1 arguments"
	exit 1
fi
for val in $*
do
	echo "column $val:"
	x=`ls -l|cut -d " " -f $val`
	echo $x
done

