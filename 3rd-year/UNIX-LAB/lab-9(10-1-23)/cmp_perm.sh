#!/bin/sh
if [ $# -ne 2 ]
then
	echo "enter valid arguments"
	exit 1
fi

x=`ls -l $1 |cut -c 2-10`
y=`ls -l $2 |cut -c 2-10`

if [ $x = $y ]
then
	echo "common permission"
else
	echo "permission are different"
	echo "permission of $1:$x"
	echo "permission of $2:$y"
fi
