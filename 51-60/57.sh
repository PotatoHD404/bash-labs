#! /bin/bash

max=0
for (( i=$(wc -l < $1);i>0;i-- ));do
    num=$(head -n$i $1 | tail -1)
    if (test "$max" -le "$num")
    then
        max=$num
    fi
done

echo $max

exit 0