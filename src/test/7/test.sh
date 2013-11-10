#! /bin/bash

# expected output
MSG="E : Second argument contains NUL or '/' character"
CODE=21

# bNULb
what="\x62\x00\x62"

# test
res=$(add-script.sh a $what c)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


