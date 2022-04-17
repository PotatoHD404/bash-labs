#! /bin/bash

echo enter file name:
read name
echo enter start line:
read start
echo enter end line:
read end

head -$(($end)) $name | tail -$(($end - $start + 1))

exit 0