#! /bin/bash

if (test "${#1}" -gt "${#2}" )
then
    echo $1
else
    echo $2
fi

exit 0