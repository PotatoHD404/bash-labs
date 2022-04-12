#! /bin/bash

cat>53
max=0
for i in $*
do
if (test "$max" -le "$i")
then
max=$i
fi
done
echo $max

exit 0