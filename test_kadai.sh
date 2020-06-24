#!/bin/bash

#################
#
#################
result=$(./kadai.sh 2 4)

if [ $result = 1 ]; then
	echo "NG"
	exit 1
elif [ $result = 2 ]; then
	echo "OK"
	exit 0
else
	echo "unexpected result:"$result
	exit 1
fi

