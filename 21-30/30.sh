#! /bin/bash

if [ "$#" -eq 1 ]
then
        z=0
        echo "we sum $1 numbers"
        echo "input $1 numbers across Enter"
        let m=$1
        while [ "$m" -ne 0 -a "$m" -gt -1 ]
        do
                read y
                let z=$z+$y
                let m=$m-1
        done
        echo "sum is equal $z"
else
        echo 'bad arguments'
        echo 'next time enter who much numbers you want to sum'
fi
