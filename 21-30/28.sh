#! /bin/bash

echo '� ���� ����� ����������� ������������� ������ � �����(����� �� �����)' 
echo 'input filename'
read x
if test -f $x
then
	uniq -d < $x | sort 
	echo 'uniq � sort ������������� � ��������'
else 
	echo 'this file not exist'
fi