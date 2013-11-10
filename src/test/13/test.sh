#! /bin/bash

# expected output
MSG="E : File <ADD> doesn't exists"
CODE=50

# test
res=$(add-script.sh a b ./a/c)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	