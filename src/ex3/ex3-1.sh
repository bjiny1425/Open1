#!/bin/sh
i=0
while [ $i -le $1 ]
do
echo "hello world"
i=`expr $i + 1`
done
exit 0

