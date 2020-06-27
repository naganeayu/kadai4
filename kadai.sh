#!/bin/bash

num1=$1
num2=$2

#引数の数チェック
if [ $# -ne 2 ];then
	echo "Please enter 2 parameters."
	exit 1
fi

#引数の自然数チェック
expr ${num1} + 1 > /dev/null 2>&1
	if [ $? -ge 2 ]; then
	echo "Both numbers should be natural numbers."
	exit 1
fi

#引数の１以上チェック
if [ ${num1} -lt 1 ] || [ ${num2} -lt 1 ]; then
	echo "Both numbers shold be greater than 1."
	exit 1

fi



function gcd() {
	if (( $1 % $2 == 0 )); then
		echo $2
	else
		gcd $2 $(( $1 % $2 ))
	fi
}

echo $(gcd ${num1} ${num2})
