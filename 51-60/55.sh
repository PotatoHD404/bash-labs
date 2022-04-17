#! /bin/bash

echo enter number
read ans
while (test "$ans" != "end")
do
    if (test "$ans" -gt "$1" -a "$ans" -lt "$2")
    then
        echo yes
    else
        echo no
    fi
    echo enter number or end
    read ans
done

exit 0