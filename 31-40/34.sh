#! /bin/bash

$cat > mynewvirus.tmp
who | tr -s ' ' | cut -f1 -d' ' > virus.tmp 
var1=$(wc -l < virus.tmp) 
let z=var1 
echo 'input' 
read letter 
while [ "$z" -gt 0 ] 
do 
y=$(tail -1 virus.tmp) 
y1=${y}' ' 
y1=${y1%%' '} 
let z=z-1 
head -$z virus.tmp > virus2.tmp 
cat virus2.tmp > virus.tmp 
echo $letter | write $y1 
done
^
$chmod +x mynewvirus.tmp
