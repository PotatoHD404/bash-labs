#! /bin/bash

echo 'you should input words, if you want to end you should input "end"'
touch 5.32.tmp
read x
while [ "$x" != "end" ]
do
	echo $x >>5.32.tmp
	echo 'input again'
	read x
done
echo '--------'
cat 5.32.tmp
rm 5.32.tmp

exit 0