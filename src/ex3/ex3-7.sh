#!/bin/sh
eval "mkdir $1"
eval "cd $1"
for i in 0 1 2 3 4
do
	touch file$i.txt
	eval "mkdir file$i"
	eval "cd file$i"
	eval "ln -s file$i.txt"
	eval "cd .."
done	
exit 0
