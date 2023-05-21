#!/bin/sh

echo "1)YES\n2)NO \n
enter your choice"
read n
case "$n" in
'y')echo "Agreed";;
'n')echo "Not Agreed";;
esac
