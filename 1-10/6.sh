#! /bin/bash

cd ~/lab5/files
echo -e "banner Hi\n MYNAME='$LOGNAME'\n echo $MYNAME\n date\n who" >> 5.6.sh

# 5.6.sh
# 
# banner Hi
# MYNAME="$LOGNAME"
# echo $MYNAME
# date
# who

chmod +x 5.6.sh
./5.6.sh

rm 5.6.sh
cd ..

exit 0