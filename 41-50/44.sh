#! /bin/bash

if ! [ -e text ]
then
    mkdir text
fi
for i in `find -name "*.txt"`
do 
    mv $i text
done

exit 0