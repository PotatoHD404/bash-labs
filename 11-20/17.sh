#! /bin/bash

echo "$0"
echo "$#"
for x in $*
do
echo -e "$x" > 5.17.tmp
let y="$(wc -c < 5.17.tmp)"-1
echo -e "$x   " $y
done



chmod +x 5.16
./5.17 ghe aaa ff sre dh
./5.17
5
ghe    3
aaa    3
ff    2
sre    3
dh    2


_________________________
echo "$0"
echo "$#"
for x in $*
do
echo -e "$x" ' :cosist of  ' "${#x} symbols"
done

///������ ���� 5.17.new

