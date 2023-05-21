#!/bin/sh
echo "Enter the radius"
read radius
echo "area of the circle is :"
echo "$radius*$radius*3.145"|bc
