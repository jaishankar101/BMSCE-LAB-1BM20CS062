#!/bin/sh
echo "enter two number"
read num1 num2
echo "1)sum"
echo "2)difference"
echo "3)product"
echo "4)quotient"
echo "5)remainder"
echo "enter your choice"
read n
case "$n" in
1)echo "sum of $num1 and $num2 is `expr $num1 + $num2`";;
2)echo "differrence of $num1 and $num2 is `expr $num1 - $num2`";;
3)echo "product of $num1 and $num2 is `expr $num1 \* $num2`";;
4)echo "quotient of $num1 and $num2 is `expr $num1 / $num2`";;
5)echo "remainder  of $num1 and $num2 is `expr $num1 % $num2`";;
esac
