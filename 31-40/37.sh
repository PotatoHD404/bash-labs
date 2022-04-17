#! /bin/bash

sleep 20
who | grep $1
if (test "$?" = "0")
then
    date > newuserdate
    sleep 20; who | grep $1
    if (test "$?" != "0")
    then
        date >> newuserdate
    fi
fi

exit 0