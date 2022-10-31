#!/bin/sh

case "$2" in  #조건문
	+)
	calc=`expr $1 + $3`  #'+' 연산식
	echo $calc;;
	
	-)
	calc=`expr $1 - $3`  #'-' 연산식
	echo $calc;;
	
	*)  #그 외
	echo "두 숫자와 연산자(+ 또는 -)를 입력해주세요.";;
esac

exit 0
