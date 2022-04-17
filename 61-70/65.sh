#! /bin/bash

IFS=':' read -ra x <<< "$PATH"
for folder in "${x[@]}"
do
    echo "$folder"
done

exit 0