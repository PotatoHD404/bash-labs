#! /bin/bash

let x=12 ; let y=$x-7 ; if [ "$y" -gt 0 ]
> then
> echo "$x more then 7 on $y"
> else
> echo "$x not more than 7"
> fi
12 more then 7 on 5
