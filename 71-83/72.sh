#! /bin/bash

files=($(ls | tr " " "\n"))

for file in "${files[@]}"; do 
    for chr in $@; do
        if [[ "$file" == *"$chr"* ]]; then
            length=($(wc -l "$file" | sed "s/ $file//"))
            echo "$file: $length"
        else 
            break
        fi
    done
done

exit 0