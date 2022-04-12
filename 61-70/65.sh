#! /bin/bash

x=$(echo $PATH | sed s/[^/]//g | wc -c)
let x=x-1
let i=x-1
while (test "$i" -ge "0")
do
let y=x-i
echo $PATH|cut -f$y -d"/"
let i=i-1
done

exit 0