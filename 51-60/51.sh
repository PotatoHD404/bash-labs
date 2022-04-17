#! /bin/bash

if ! [ -e ~/programm ]
then
    mkdir ~/programm
fi

touch ~/programm/.programm_list

if (test "$1" = "-a")
then
    cat ~/programm/.programm_list
else
    mv $1 ~/programm/$2
    chmod +x ~/programm/$2
    echo $2 >> ~/programm/.programm_list
fi

exit 0