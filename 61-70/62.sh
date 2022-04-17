#! /bin/bash

max=""
folder=$1
shift
for user in $*
do
    files=`find $folder -type f -user $user`
    for x in $files
    do
        x="${x:2}"
        if (test "${#x}" -gt "${#max}" )
        then
            max=$x
        fi
    done
done

echo $max

exit 0