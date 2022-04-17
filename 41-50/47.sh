#! /bin/bash

# to remove .exe from files:
# for i in `find . -name "*.exe"`; do mv $i $(ls $i|sed -e 's/\.exe//'); done

ls>list47
grep -v \.exe list47 >tmp47
rm list47
z=$(wc -l < tmp47)
while [ "$z" -gt 0 ] 
do 
    y=$(head -n$z tmp47|tail -1)
    if [ -x $y ]
    then
        mv $y $y.exe
    fi
    let z=z-1
done
rm tmp47

exit 0