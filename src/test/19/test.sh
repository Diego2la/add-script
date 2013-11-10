#! /bin/bash

# expected output
MSG=""
CODE=0
FILE="./a/b.BAT"
DATA="PATH = a\ncontent\nNAME = b"

# remove FILE for test
rm $FILE

# test
res=$(add-script.sh a b ./a/c)

if [[ $? == $CODE && $res == $MSG && $(echo -e $DATA) == $(cat $FILE) ]]; then
	exit 0
else 
	exit 1
fi