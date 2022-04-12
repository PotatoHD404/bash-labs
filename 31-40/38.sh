#! /bin/bash

cat>38
test -d .recycler
if (test "$?" != "0")
then
mkdir .recycler
fi
case $1 in
"-m")
for i in $*
do 
if (test "$i" != "$1")
then
mv $i ~/.recycler
fi
done ;;
"-l") ls ./.recycler ;;
"-a") du -sh .recycler ;;
"-d")
cd .recycler
ls| tr -s ' ' > list
z=$(wc -l < list) 
while [ "$z" -gt "0" ] 
do 
y=$(head -n$z list|tail -1) 
let z=z-1
if (test "$y" != "list")
then
rm $y
fi 
done
rm list
cd $HOME
;;
esac

exit 0