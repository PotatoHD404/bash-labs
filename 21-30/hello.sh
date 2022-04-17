#! /bin/bash

if [ "$#" -ne 1 ]
then
        echo 'in next time write "-d" to see date'
        echo 'in next time write "-w" to see workind users'
        echo 'in next time write "-l" to see files in this directory'
else
        case $1 in
        -d) date;;
        -w) who;;
        -l) ls;;
        *) echo 'in next time write:'
           echo '"-d" to see date'
           echo '"-w" to see workind users'
           echo '"-l" to see files in this directory' ;;
        esac
fi

exit 0