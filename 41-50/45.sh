#! /bin/bash

for i in `find . -name "*.txt"`
do 
    mv $i $(ls $i|sed -e 's/\.txt//').doc
done

exit 0