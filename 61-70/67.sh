#! /bin/bash

echo $PWD
y=$(find ./ -ls|tr -s ' '|cut -f11 -d" "|grep $0)
x=$(echo $y|sed s/[^/]//g|wc -c)
let x=x-1
z=$(echo $y|cut -f2-$x -d"/")
let x=x+1
echo $PWD/$z
echo $y|cut -f$x -d"/"

exit 0