#! /bin/bash

if [ "$#" -ne 1 ]
then
        echo 'next time write:'
        echo '"-d" to see date'
        echo '"-w" to see working users'
        echo '"-l" to see files in this directory'
else
        case $1 in
        -d) date;;
        -w) who;;
        -l) ls;;
        *) echo 'next time write:'
           echo '"-d" to see date'
           echo '"-w" to see working users'
           echo '"-l" to see files in this directory' ;;
        esac
fi

exit 0