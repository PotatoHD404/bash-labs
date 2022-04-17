#! /bin/bash

echo Enter message:

read message
i=1
while (test "$i" -le "12")
do
    let i=$i+1
    sleep 5
    echo $message
done

exit 0