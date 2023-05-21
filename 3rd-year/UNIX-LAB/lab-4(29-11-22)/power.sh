#!/bin/sh
echo "enter number"
read num
echo "enter power"
read pow
res=$num
if [ $pow -eq 0 ]
then 
res=1
else
while [ $pow -gt 1 ]
do
res=$((res*num))
pow=$((pow-1))
done
fi
echo $res
