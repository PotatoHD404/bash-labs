#! /bin/bash

mkdir text
cat>44
ls>list44
grep \.txt list44 >tmp44
rm list44
x=$(wc -l < tmp44)
while [ "$x" -gt 0 ] 
do 
y=$(head -n$x tmp44|tail -1)
mv $y ~/text
let x=x-1
done
rm tmp44

exit 0