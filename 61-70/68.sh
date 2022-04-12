#! /bin/bash

cat>68
echo $1
ls -sh $1|tr -s ' '|cut -f2 -d" "
ls -l $1|cut -f17-21 -d" "
ls -lu $1|cut -f17-21 -d" "
ls -lc $1|cut -f17-21 -d" "

exit 0