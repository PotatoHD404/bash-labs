#! /bin/bash

ls>list45
grep \.txt list45|cut -f1 -d"." >tmp45
rm list45
x=$(wc -l < tmp45)
while [ "$x" -gt 0 ] 
do 
y=$(head -n$x tmp45|tail -1)
mv $y.txt $y.doc
let x=x-1
done
rm tmp45

exit 0