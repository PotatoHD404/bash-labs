#! /bin/bash

cat > 5.18
if [ $# -eq 3 ]
then
echo $1 $2 $3
else
echo 'ERROR: few or more vars'
fi
^C
chmod +x 5.18
./5.18 g d r
g d r
./5.18 g d r erter
ERROR: few or more var

