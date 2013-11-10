#! /bin/bash

# expected output
MSG="E : Second argument contains NUL or '/' character"
CODE=21

# test
res=$(add-script.sh a b/b c)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


