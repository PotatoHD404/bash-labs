#! /bin/bash

max=""
files=`find $1 -type f`
for x in $files
do
    x="${x:2}"
    if (test "${#x}" -gt "${#max}" )
    then
        max=$x
    fi
done

echo $max

exit 0