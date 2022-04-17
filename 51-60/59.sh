#! /bin/bash

max=0
s=0
while (test "$#" -gt "0")
do
    if (test "${#1}" -gt "$max" )
    then
        let max=${#1}
    fi
    let s=s+${#1}
    shift
done

echo $max
echo $s

exit 0