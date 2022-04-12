#! /bin/bash

cat>57
max=0
x=$(wc -l < $1)
while (test "$x" -gt "0" )
do
num=$(head -n$x $1|tail -1)
if (test "$max" -le "$num")
then
max=$num
fi
let x=x-1
done
echo $max

exit 0