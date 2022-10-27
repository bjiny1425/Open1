#!/bin/sh
case "$2" in
	+)
	calc=`expr $1 + $3`
	echo $calc;;
	-)
	calc=`expr $1 - $3`
	echo $calc;;
	*)
	echo "두 숫자와 연산자(+ 또는 -)를 입력해주세요.";;
esac
exit 0
