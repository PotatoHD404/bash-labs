#! /bin/bash

cat>56
echo enter num
read num
while (test "$#" -gt "0")
do
if (test "$num" -gt "$1" -a "$num" -lt "$2")
then
echo yes
else
echo no
fi
shift 2
done
^C

exit 0