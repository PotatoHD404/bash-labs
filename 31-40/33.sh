#! /bin/bash

./words2.sh

IFS=' ' read -ra array <<< "$output"

IFS=$'\n' sorted=($(sort <<<"${array[*]}"))

echo "The alphabetical order of your words is:"

for w in ${sorted[@]}; do
    echo -n "$w "
done

echo

exit 0