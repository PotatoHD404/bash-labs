#! /bin/bash

who | tr -s ' ' | cut -f1 -d' ' > tmp 
x=$(wc -l < tmp) 
let z=$x 
echo 'input' 
read message 
while [ "$z" -gt 0 ] 
do 
    y=$(tail -1 tmp) 
    y1=${y}' ' 
    y1=${y1%%' '} 
    let z=$z-1 
    head -$z tmp > tmp2 
    cat tmp2 > tmp 
    echo $message | write $y1 
done

exit 0