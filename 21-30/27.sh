#! /bin/bash

read x
if test -f $x
then
	touch tmp5.27
	sort -u $x > tmp5.27
	cat tmp5.27 > $x
	rm tmp5.27
	echo 'sort ������������� � ��������'
else 
	echo 'this file not exist'
fi
_________________________
���� ������������� uniq

exit 0