#! /bin/bash

max=a
touch tmp61
find $1 -ls>tmp61
x=$(wc -l<tmp61)
while (test "$x" -gt "0")
do
y=$(head -n$x tmp61|tail -1)
z=$(echo $y|sed s/[^/]//g|wc -c)
a=$(echo $y|cut -f$z -d"/")
if (test "${#a}" -gt "${#max}" )
then
max=$a
fi
let x=x-1
done
echo $max
rm tmp61

exit 0