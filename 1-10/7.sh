#! /bin/bash

cd /tmp
./6.sh
# bash: ./5.6: No such file or directory

tmp=$(bash ~/lab5/6.sh)
echo "$tmp"
cd ~

exit 0