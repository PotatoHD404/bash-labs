#! /bin/bash

ls>list43
grep ^a list43|cut -c 2- >tmp43
rm list43
x=$(wc -l < tmp43)
while [ "$x" -gt 0 ] 
do 
    y=$(head -n$x tmp43|tail -1)
    mv a$y A$y
    let x=x-1
done
rm tmp43


exit 0