#! /bin/bash
echo "enter the file name:"
read x
if test -f $x
then
	# touch tmp5.27
	sort -u $x > tmp5.27
	cat tmp5.27 > $x
	rm tmp5.27
	echo 'sorted'
else 
	echo 'this file does not exist'
fi

exit 0