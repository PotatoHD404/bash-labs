#! /bin/bash

echo 'do you want look this catalog:
input "y" if ypu want
input "n" if you want choice another'
read x
if [ "$x" = "y" ]
then 
	ls 
else
	if [ "$x" = "n" ]
	then 
		echo 'input full way to directory'
		read y
		ls $y > test5.23
		if [ "$?" -eq 0 ] 
		then
			cat < test5.23
		else
			echo 'directory not exist'
		fi
	else
		echo 'bad input data'
	fi
fi
