#! /bin/bash

echo "Input three your names:"
read names
array=($(echo $names | tr " " "\n"))

printf '%s\n' "${array[@]:0:3}" | sort

len=0
for name in "${array[@]}"; do
    len=$(($len + 1))
done

if [[ len -gt 3 ]]; then 
    echo "There are $(($len - 3)) extra names!"
    start=3

    while [[ $start -lt $len ]]; do
        echo "extra> ${array[start]}"
        start=$(($start + 1))
    done
fi

exit 0