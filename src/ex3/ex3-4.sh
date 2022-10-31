#!/bin/sh
echo "리눅스가 재미있나요? (yes / no)"
read answer

case $answer in  #조건문
	[yY]*)  #y 또는 Y 중 하나가 나오면 OK
	echo "yes";;
	
	[nN]*)  #n 또는 N 중 하나가 나오면 ok
	echo "no";;
	
	*)  #나머지
	echo "yes or no로 입력해 주세요."
	exit 1;;
esac

exit 0
