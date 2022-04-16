#! /bin/bash

echo 'input filename'
read x
if test -f $x
then
	sort $x | uniq -d
else 
	echo 'this file not exist'
fi

exit 0