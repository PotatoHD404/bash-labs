#! /bin/bash

echo "Input the format:"
read format

ls -p | grep -v / | grep -e A*.$format -e a*.$format -e *my*.$format

exit 0