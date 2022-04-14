#! /bin/bash

for i in `find . -name "a?.doc"`
do 
    mv $i $(ls $i|sed -e 's/\.doc//').txt
done

exit 0