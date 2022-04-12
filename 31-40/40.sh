#! /bin/bash

echo Enter name
read name
grep $name /etc/passwd|cut -f4 -d":"
grep $name /etc/passwd|cut -f6 -d":"
home=$(grep $name /etc/passwd|cut -f6 -d":")
ls $home

exit 0