#! /bin/bash

cat>52
case $1 in
"-a")
cat programm_list
;;
"-d")
rm ./programm/$1
sed "/$1/d" "programm_list"
;;
"-n")
mv $1 ./programm
chmod +x ./programm/$1
echo $1>>programm_list
;;
esac

exit 0