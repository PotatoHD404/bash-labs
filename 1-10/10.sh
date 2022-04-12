#! /bin/bash
echo "Enter something"
read Y
if [ "$Y" == "UNIX" ]
then
    echo "you entered UNIX"
else
    echo "you entered not UNIX"
fi

exit 0