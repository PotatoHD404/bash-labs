#! /bin/bash

vi 5.16
"5.16" 3 lines, 31 characters
for x in $*
do
        echo -e "$x" >> tmp
done
sort tmp
rm tmp
~
chmod +x 5.16
./5.16 mama sazala ogurtsu abab
abab
mama
ogurtsu
sazala
$