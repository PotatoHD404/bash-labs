#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

viruses[0]=$SCRIPTPATH/virus.sh
viruses[1]=$SCRIPTPATH/virus2.sh
viruses[2]=$SCRIPTPATH/virus3.sh
viruses[3]=$SCRIPTPATH/virus4.sh
viruses[4]=$SCRIPTPATH/virus5.sh
viruses[5]=$SCRIPTPATH/virus6.sh
viruses[6]=$SCRIPTPATH/virus7.sh
viruses[7]=$SCRIPTPATH/supervirus.sh


viruses2[0]=$SCRIPTPATH/virus8.sh
viruses2[1]=$SCRIPTPATH/virus9.sh


filename=$(basename $0)
files=`find ~ -type f -name "*.sh" | sed "s/.\\///"`
files=($(echo $files | tr " " "\n"))

for file in "${files[@]}"; do
    if [[ $file != $filename ]]; then
        f=`cat $file`
        for virus in "${viruses[@]}"; do
            while [[ "$f" == *"$virus"* ]]
            do 
                length=`echo "$virus" | wc -l`
                head -n -$length $file > temp.sh && temp.sh > $file && rm temp.sh
            done
        done

        f=`cat $file | grep -i "^[^#].*$"`
        for virus in "${viruses2[@]}"; do
            while [[ "$f" == *"$virus"* ]]
            do 
                length=`echo "$virus" | wc -l`
                head -n -$length $file > temp.sh && temp.sh > $file && rm temp.sh
            done
        done
    fi
done


echo -n -e "\n$virus"
exit 0