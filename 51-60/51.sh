#! /bin/bash

mkdir programm
touch programm_list
if (test "$1" = "-a")
then
cat programm_list
else
mv $1 ./programm
chmod +x ./programm/$1
echo $1>>programm_list
fi

exit 0