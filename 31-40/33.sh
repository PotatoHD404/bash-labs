#! /bin/bash

echo 'you should input words, if you want to end you should input "end"'
touch 5.33.tmp
rm 5.33.tmp
touch 5.33.tmp
read x
while [ "$x" != "end" ]
do
	echo $x >>5.33.tmp
	echo 'input again'
	read x
done
banner 'result'
sort < 5.33.tmp
rm 5.33.tmp

exit 0