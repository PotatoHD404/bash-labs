#! /bin/bash

echo 'input 3 names'
touch names5.19
rm names5.19
touch names5.19
read x
x=$x' '
while [ -n "$x" ]
do
        echo ${x%%' '*}>>names5.19
        x=${x#*' '}
done
let number="$(wc -l < names5.19)"
if [ $number -eq 3 ]
then
        sort names5.19
else
        if [ $number -gt 3 ]
        then
		echo $number ' -it is number of all names'
                let number=$number-3
                echo 'extra> '
                tail -$number names5.19
        fi
fi

