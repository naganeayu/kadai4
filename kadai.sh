#!/bin/bash

#read -p "enter first number: " num1
#read -p "enter second number: " num2

#echo "You entered $num1 and $num2"
num1=$1
num2=$2

if [ ${num1} -lt 1 ] || [ ${num2} -lt 1 ]; then
#echo "You entered wrong number"
exit 1

fi

expr ${num1} + 1 > /dev/null 2>&1
if [ $? -ge 2 ]; then
#echo "OK"
#else
#echo "Error occured. Please try again."
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
  
