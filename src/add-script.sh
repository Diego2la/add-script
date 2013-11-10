#! /bin/bash

MSG_1="E : Count of arguments is not equals 3"
MSG_10="E : First argument length is larger than 255"
MSG_11="E : First argument contains NUL or '/' character"
MSG_20="E : Second argument length is larger than 127"
MSG_21="E : Second argument contains NUL or '/' character"
MSG_30="E : Third argument length is larger than 127"
MSG_31="E : Third argument contains NUL character"
MSG_40="E : Subdirectory <WHERE> doesn't exists"
MSG_41="E : Subdirectory <WHERE> is not accessible for read or write"
MSG_50="E : File <ADD> doesn't exists"
MSG_51="E : File <ADD> is not accessible for read"
MSG_60="E : File <WHAT> not accessible for read or write"

# spec 3.2.1
if [ $# -ne 3 ]; then
	echo $MSG_1
	exit 1
fi

# spec 3.2.2
if [ ${#1} -gt 255 ]; then
	echo $MSG_10
	exit 10
fi
# spec 3.2.3
if [[ $1 == */* || $1 == *\x00* ]]; then
	echo $MSG_11
	exit 11
fi

# spec 3.2.4
if [ ${#2} -gt 127 ]; then
	echo $MSG_20
	exit 20
fi
# spec 3.2.5
if [[ $2 == */* || $2 == *\x00* ]]; then
	echo $MSG_21
	exit 21
fi

# spec 3.2.6
if [ ${#3} -gt 127 ]; then
	echo $MSG_30
	exit 30
fi
# spec 3.2.7
if [[ $3 == *\x00* ]]; then
	echo $MSG_31
	exit 31
fi

# spec 3.2.8
if [ ! -d "./"$1 ]; then
	echo $MSG_40
	exit 40
fi
# spec 3.2.9
if [[ ! -r "./"$1 || ! -w "./"$1 ]]; then
	echo $MSG_41
	exit 41
fi

# spec 3.2.10
if [ ! -e $3 ]; then
	echo $MSG_50
	exit 50
fi
# spec 3.2.11
if [[ ! -r $3 ]]; then
	echo $MSG_51
	exit 51
fi

FILE="./"$1"/"$2".BAT"

# spec 3.2.12
if [[ -e $FILE && (! -r $FILE || ! -w $FILE) ]]; then
	echo $MSG_60
	exit 60
fi


# spec 3.3.1
if [[ -e $FILE ]]; then
	dest="$HOME/$2.BAT"
	echo -n $(cat $3) > $dest
	echo -n $(cat $FILE) >> $dest
# spec 3.3.2
else
	echo -e "PATH = $1\n$(cat $3)\nNAME = $2" > $FILE
fi

exit 0