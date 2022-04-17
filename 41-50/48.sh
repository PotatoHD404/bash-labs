#! /bin/bash

du -all | sort -rn | head -n1 | tr -s ' '>tmp48
x=$(cut -f2 -d" " tmp48)
echo $PWD/$x
rm tmp48

exit 0