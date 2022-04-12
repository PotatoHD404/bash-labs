#! /bin/bash

if [[ $# = 2 ]]
then
        cd $2
fi

x=` ls -la | grep $1 | cut -c1 `
y=` ls -la | grep $1 | tr -s ' ' | cut -f2 -d' ' `
z=` ls -la | grep $1 | tr -s ' ' | cut -f1 -d' ' `

test -e $1
if [[ $? = 0 ]]
then
        if [[ "$x" = - ]]
        then
                if [[ "$y" = 1 ]]
                then
                        echo $1 is a file
                else
                        echo $1 is a link
                fi
        else
                if [[ "$z" = p ]]
                then
                        echo $1 is a canal
                else
                        echo $1 is a dir
                fi
        fi
else
        echo no
fi

