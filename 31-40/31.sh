#! /bin/bash

echo enter first operand
read answer
echo enter operation
read operation
while (test "$operation" != "=")
do
    echo enter operand
    read operand
    case $operation in
    "+") let answer=$answer+$operand ;;
    "-") let answer=$answer-$operand ;;
    "*") let answer=$answer*$operand ;;
    "/") let answer=$answer/$operand ;;
    esac
    echo $answer
    echo enter operation
    read operation
done


exit 0