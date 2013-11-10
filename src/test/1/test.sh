#! /bin/bash

# expected output
MSG="E : Count of arguments is not equals 3"
CODE=1

# test
res=$(add-script.sh a b)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


