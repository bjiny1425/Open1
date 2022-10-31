#!/bin/sh
if [ ! -d $1 ]; then
	mkdir $1  # 존재 확인하고 생성
	eval "cd $1"

	for i in 0 1 2 3 4
		do
		touch file$i.txt  # txt파일 생성
		done

	eval "tar -cf $1.tar *.txt"  # .txt 파일 압축
	eval "ls"  #디렉 내용 확인
	eval "mkdir files"  # 파일 생성
	eval "mv $1.tar files"  # 압축파일 이동
	eval "cd files"  
	eval "tar -xvf $1.tar"  # 압축 해제
	
else
	echo "이미 존재하는 파일입니다."
fi

exit 0




