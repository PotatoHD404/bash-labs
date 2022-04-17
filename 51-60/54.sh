#! /bin/bash

max=0
for (( i=$1;i>0;i-- ));do
    echo enter number
    read num
    if (test "$max" -le "$num")
    then
        max=$num
    fi
done

echo $max

exit 0