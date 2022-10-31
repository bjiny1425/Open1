#!/bin/sh
eval "mkdir $1"  #디렉 생성
eval "cd $1"

for i in 0 1 2 3 4
do
	touch file$i.txt  #파일 생성
	eval "mkdir file$i"
	eval "cd file$i"
	eval "ln -s file$i.txt"  #링크
	eval "cd .."
done	

exit 0
