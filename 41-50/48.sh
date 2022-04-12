#! /bin/bash

cd $1
du -a|sort -rn|head -n1|tr -s ' '>tmp48
x=$(cut -f2 -d" " tmp3)
echo $PWD/$x
rm tmp3
cd $HOME

exit 0