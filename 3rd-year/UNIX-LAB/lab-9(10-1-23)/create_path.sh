#!/bin/sh
if [ $# -ne 1 ]
then
	echo "enter valid arguments"
	exit 1
fi

i=1
j=1
len=`echo $1 |wc -c`
while [ $i -le $len ]
do
	x=`echo $1 |cut -d / -f $j`
	namelength=`echo $x|wc -c`
	mkdir $x
	cd $x
	pwd
	j=`expr $j + 1`
	i=`expr $i + $namelength`
done
