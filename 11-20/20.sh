#! /bin/bash

let x="$(date '+ %k')"
/*echo date*/
case $x in
0) echo good night ;;
1) echo good night ;;
2) echo good night ;;
3) echo good night ;;
4) echo good night ;;
5) echo good night;;
6) echo good morning ;;
7) echo good morning ;;
8) echo good morning ;;
9) echo good morning ;;
10) echo good morning ;;
11) echo good morning ;;
12) echo good afternoon ;;
13) echo good afternoon ;;
14) echo good afternoon ;;
15) echo good afternoon ;;
16) echo good afternoon ;;
17) echo good afternoon ;;
18) echo good evening ;;
19) echo good evening ;;
20) echo good evening ;;
21) echo good evening ;;
22) echo good night ;;
23) echo good night ;;
*) echo NO ;;
esac
