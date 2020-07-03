#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp/$$-result"

ERROR_EXIT(){
	echo $1
	rm /tmp/$$-*
	exit 1
}

echo "Please enter 2 parameters." > ${ans}

./kadai.sh 1 2 3 > ${result}
diff ${ans} ${result} || ERROR_EXIT "Err-param number check"


echo "Both numbers should be greater than 1." > ${ans}

./kadai.sh -1 1 > ${result}
diff ${ans} ${result} || ERROR_EXIT "Err-greater than 1 check"


echo "Both numbers should be natural numbers." > ${ans}

./kadai.sh 1 1.1 > ${result}
diff ${ans} ${result} || ERROR_EXIT "Err-natural number check"


echo "OK"
rm /tmp/$$-*

exit 0
