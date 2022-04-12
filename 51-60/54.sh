#! /bin/bash

cat>54
max=0
x=$1
while (test "$x" -gt "0" )
do
echo enter number
read num
if (test "$max" -le "$num")
then
max=$num
fi
let x=x-1
done
echo $max

exit 0