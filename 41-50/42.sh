#! /bin/bash

echo enter first
read f
echo enter last
read l
let e=$l-$f
head -n $l $1|tail -$e

exit 0