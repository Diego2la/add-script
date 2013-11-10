#! /bin/bash

# This file set permissions for tests

# you must run this script after copy test colder
# for configuring permissions for files in test folders

INIT="./init.sh"

echo "##########################"
echo "Init scripts permissions"
echo "##########################"

passed=0
scripts=0
for i in $(ls)
do
	if [[ -d $i ]]; then 
		cd $i
		if [[ -e $INIT && -r $INIT && -x $INIT ]]; then 
			echo "------------------ INIT #$i"
			error=$($INIT)
			code=$?

			res="FAIL"
			if [[ $code == 0 ]]; then
				res="PASSED"
				((passed++))
			else
				echo "code='$code'"
				echo "error='$error'"
			fi
			((scripts++))
			echo "$res"
		fi
		cd ..
	fi
done

echo "##########################"
echo "init passed: $passed/$scripts"
echo "End init"
echo "##########################"
