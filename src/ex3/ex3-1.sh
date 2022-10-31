#!/bin/sh

i=0  #초기값

if [ -z "$1" ]	#입력한 파라미터가 없으면
then
	while [ 1 ]  #참인 경우 계속 반복(무한 루프)
	do
		echo "hello world"
		sleep 0.5  #0.5초 일시정지, ctrl+c : 실행종료
	done
	
else  #입력한 파라미터가 있으면
	while [ $i -le $1 ]  #$1 전까지 반복
	do
		echo "hello world"  
		i=`expr $i + 1`  #i가 1씩 증가
	done
fi

exit 0
