#! /bin/bash

# vi 5.4.sh
cd files
echo "echo Hello world" >> privet.sh
chmod +x 5.4.sh
./5.4.sh
rm 5.4.sh
cd ..
# Hello World

exit 0