#! /bin/bash

echo do you want to make a new directory?
read y
while (test "$y" = "yes" -o "$y" = "-a")
do
    if (test "$y" = "yes")
    then
        echo enter name of directory
        read name
        mkdir $name
    else
        echo  what directory you want to go?
        read dest
        cd $dest
    fi
    echo make a new directory?
    read y
done

exit 0