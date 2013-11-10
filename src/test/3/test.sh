#! /bin/bash

# expected output
MSG="E : First argument contains NUL or '/' character"
CODE=11

# test
res=$(add-script.sh a/a b c)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


