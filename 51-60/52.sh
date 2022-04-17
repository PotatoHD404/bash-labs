#! /bin/bash

if ! [ -e ~/programm ]
then
    mkdir ~/programm
fi

touch ~/programm/.programm_list

case $1 in
"-a")
cat ~/programm/.programm_list
;;
"-d")
rm -f ~/programm/$2
sed "s/$2//" "$HOME/programm/.programm_list" > ~/programm/.programm_list
;;
"-n")
mv $2 ~/programm/$3
chmod +x ~/programm/$3
echo $3 >> ~/programm/.programm_list
;;
esac

exit 0