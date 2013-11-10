#! /bin/bash

# expected output
MSG="E : File <WHAT> not accessible for read or write"
CODE=60

# test
res=$(add-script.sh a b ./a/c)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	