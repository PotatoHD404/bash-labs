#! /bin/bash

x=$(echo $PATH | sed s/[^/]//g | wc -c)
let x=x-1
echo $x

exit 0