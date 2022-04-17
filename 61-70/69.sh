#! /bin/bash

command=`find . -type f |  sed "s/.\///" | grep "^[^a]*a[^a]*$" | grep "^[^b]*b[^b]*$" | grep "^[^\.]*\.[^\.]*$"`
for x in $command
do
    dot="${x%%.*}"
    a="${x%%a*}"
    b="${x%%b*}"
    let dot=${#dot}+1
    let a=${#a}+1
    let b=${#b}+1
    echo $x №$dot "." №$a "a" №$b "b"
done

exit 0