#! /bin/bash

echo "##########################"
echo "Start test suit"
echo "##########################"

tests=0
passed=0
for i in $(ls)
do
	if [[ -d $i ]]; then 
		echo "------------------ TEST #$i"
		((tests++))
		cd $i

		res="FAIL"
		error=$("./test.sh")
		code=$?
		if [[ $code == 0 ]]; then
			((passed++))
			res="PASSED"
		else
			echo "code='$code'"
			echo "error='$error'"
		fi
			
		cd ..
		echo "$res"
	fi
done

echo "##########################"
echo "test passed: $passed/$tests"
echo "End test suit"
echo "##########################"