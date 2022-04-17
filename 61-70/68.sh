#! /bin/bash

echo $1

ls -l $1 | tr -s ' ' | cut -f5 -d" "
ls -l $1 | tr -s ' ' | cut -f6-8 -d" "
ls -lu $1 | tr -s ' ' | cut -f6-8 -d" "
ls -lc $1 | tr -s ' ' | cut -f6-8 -d" "

exit 0