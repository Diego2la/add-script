#! /bin/bash

# expected output
MSG="E : Subdirectory <WHERE> is not accessible for read or write"
CODE=41

# test
res=$(add-script.sh a b c)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


