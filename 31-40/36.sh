#! /bin/bash

s=$(date '+%S')
s1=$s
s2=$s1
m2=0
date '+ %H.%M.%S'
while [ "$m2" -eq 0 ]
do
 if [ $s2 -gt $s1 ]
 then 
	let s2=$s2-60
 fi 
 let s3=$s1-$s2
 if [ $s3 -eq 20 ]
 then
        date '+ %H.%M.%S'
        who | tr -s ' ' | cut -f1 -d' ' > 5.36.tmp
        grep $1 5.36.tmp > 5.361.tmp 
        if [ $? -eq 0 ]
        then
	  echo "$1 logged in"
	  m2=1
	else
	  echo "$1 still did not log"
	fi
 fi
 s1=$(date '+%S')
done