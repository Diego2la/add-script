#! /bin/bash

# expected output
MSG="E : Third argument contains NUL character"
CODE=31

# cNULc
what="\x63\x00\x63"

# test
res=$(add-script.sh a b $what)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


