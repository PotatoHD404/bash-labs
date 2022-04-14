#! /bin/bash

sleep 20
who|grep $1
set -o monitor

exit 0