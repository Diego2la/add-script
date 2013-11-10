#! /bin/bash

# expected output
MSG="E : First argument contains NUL or '/' character"
CODE=11

# aNULa
what="\x61\x00\x61"

# test
res=$(add-script.sh $what b c)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


