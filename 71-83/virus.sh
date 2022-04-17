#! /bin/bash

# > 5-74.sh

echo "-I_understand_all_risks_and_i_want_to_run_the_program/-no"
read  choice
case "$choice" in 
"-I_understand_all_risks_and_i_want_to_run_the_program")
;;
"-no") echo "Ok, good choice)"
exit 0
;;
* ) echo "invalid"
exit 0
;;
esac

cp "$0" ./hidden_virus.sh

chmod +x hidden_virus.sh

rm "$0"


exit 0