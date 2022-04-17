#! /bin/bash

echo enter num
read num
while (test "$#" -gt "0")
do
    if (test "$num" -gt "$1" -a "$num" -lt "$2")
    then
        echo "($1, $2): yes"
    else
        echo "($1, $2): no"
    fi
    shift 2
done

exit 0