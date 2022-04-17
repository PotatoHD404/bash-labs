#! /bin/bash

head -$(($3)) $1 | tail -$(($3 - $2 + 1))

exit 0