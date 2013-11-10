#! /bin/bash

# expected output
MSG="E : Second argument length is larger than 127"
CODE=20

# put 128 'b' to str
for (( i=0; i<128; i++ )) 
do
	str=$str"b"
done

# test
res=$(add-script.sh a $str  c)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


