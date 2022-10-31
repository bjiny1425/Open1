#!/bin/sh
weight=$1
height=$2

#bc 실수연산 / scale=n, 소수점 n자리
Mheight=$( echo "scale=2; $height/100" |bc )
M_2=$( echo "scale=2; $Mheight*$Mheight" |bc )
bmi=$( echo "scale=2; $weight/$M_2" |bc )

if [ `echo "scale=2; $bmi < 18.5" |bc` -eq 1 ]; then
	echo "저체중입니다."
elif [ `echo "scale=2; $bmi >= 23" |bc` -eq 1 ]; then
	echo "과체중입니다."
else
	echo "정상체중입니다."
fi

exit 0
