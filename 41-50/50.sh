#! /bin/bash

if ! [ -e ~/programm ]
then
    mkdir ~/programm
fi

for (( i=$#;i>0;i-- ));do
    mv "${!i}" ~/programm
    chmod +x ~/programm/$(basename ${!i})
    echo 
done

exit 0