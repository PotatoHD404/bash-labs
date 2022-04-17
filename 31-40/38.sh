#! /bin/bash

if ! [ -e ~/.recycler ]
then
    mkdir ~/.recycler
fi

case $1 in
"-m") for i in $*
      do 
          if (test "$i" != "$1")
          then
              mv $i ~/.recycler
          fi
      done ;;
"-l") ls ~/.recycler ;;

"-a") du -sh ~/.recycler ;;

"-d") rm -rf ~/.recycler/*
esac

exit 0