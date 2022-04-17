#! /bin/bash

IFS=':' read -ra x <<< "$PATH"
max=0
for folder in "${x[@]}"
do
    count=`echo "$folder" | sed 's/\/$// ; s/[^/]//g'`
    count=${#count}
    if (test $count -gt $max)
    then
        let max=$count
    fi
done

echo $max

exit 0