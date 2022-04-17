#! /bin/bash

echo 'input ID'
read x
if [ "$x" == "" ]
then
	echo "you didn't provide any name"
	exit 0
fi
name=$(cat /etc/passwd | cut -f1 -d':' | grep -x $x)
if [ "$name" != "" ]
then
	grep $name /etc/passwd | cut -f6 -d':'
else
	echo 'NO'
fi

exit 0