#! /bin/bash

echo enter file name:
read name
echo enter start line:
read start
echo enter end line:
read end

sed -n '$start,$(end)p' $name

exit 0