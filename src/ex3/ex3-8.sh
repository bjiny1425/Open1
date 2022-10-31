#!/bin/sh
touch DB.txt
info="$1 $2"
echo "$info" >> DB.txt #기존파일에 추가
exit 0

