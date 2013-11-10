#! /bin/bash

# expected output
MSG="E : Subdirectory <WHERE> doesn't exists"
CODE=40

# test
res=$(add-script.sh a b c)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


