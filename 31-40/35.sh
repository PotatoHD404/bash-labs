#! /bin/bash

let m="$(date '+%M')"
let s="$(date '+%S')"
let m1=$m
let s1=$s
let s2=$s1
date '+ %H.%M.%S letter'
while [ $m1 -eq $m -o $s1 -lt $s ]
do
 if [ $s2 -gt $s1 ]
 then 
	let s2=${s2}-60
 fi 
 let s3=${s1}-${s2}
 if [ "$s3" -eq 5 ]
 then
        date '+ %H.%M.%S letter'
	let s2=$s1
 fi
 let m1="$(date '+%M')"
 let s4="$(date '+%S')"
 let s1=$s4
done