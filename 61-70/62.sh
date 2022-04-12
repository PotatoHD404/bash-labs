#! /bin/bash

max=a
touch tmp62
find $1 -ls|grep $2 >tmp62
x=$(wc -l<tmp62)
while (test "$x" -gt "0")
do
y=$(head -n$x tmp62|tail -1)
z=$(echo $y|sed s/[^/]//g|wc -c)
a=$(echo $y|cut -f$z -d"/")
if (test "${#a}" -gt "${#max}" )
then
max=$a
fi
let x=x-1
done
echo $max
rm tmp62

exit 0