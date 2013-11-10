#! /bin/bash

# expected output
MSG="E : Third argument length is larger than 127"
CODE=30

# put 128 'c' to str
for (( i=0; i<128; i++ )) 
do
	str=$str"c"
done

# test
res=$(add-script.sh a b $str)

#exit
if [[ $? == $CODE && $res == $MSG ]]; then
	exit 0
else 
	exit 1
fi	


