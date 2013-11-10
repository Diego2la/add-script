#! /bin/bash

# expected output
MSG=""
CODE=0
DATA="cb"
DEST="$HOME/b.BAT"

# remove DEST
if [[ -e $DEST ]]; then
	rm $DEST 
fi

# test
res=$(add-script.sh a b ./a/c)

echo $(cat $DEST)

if [[ $? == $CODE && $res == $MSG && $DATA == $(cat $DEST) ]]; then
	exit 0
else 
	exit 1
fi	


