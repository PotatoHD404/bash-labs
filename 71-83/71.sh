#! /bin/bash

a=$(declare -xp | wc -l)
b=$(declare -p | wc -l)
let c=$b-$a

echo "$b $c"

exit 0