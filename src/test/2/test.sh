#! /bin/bash

# expected output
MSG="E : First argument length is larger than 255"
CODE=10

# put 236 'a' to str
for (( i=0; i<256; i++ )) 
do
	str=$str"a"
done

# test
res=$(add-script.sh $str b c)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


