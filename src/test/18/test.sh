#! /bin/bash

# expected output
MSG=""
CODE=0
DATA="cb"
DEST="$HOME/b.BAT"

# put some data to DEST
echo "some data" > $DEST

# test
res=$(add-script.sh a b ./a/c)


if [[ $? == $CODE && $res == $MSG && $DATA == $(cat $DEST) ]]; then
	exit 0
else 
	exit 1
fi	


