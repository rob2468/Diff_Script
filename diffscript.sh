#!/bin/bash

dir1=$1
dir2=$2

res1=`find $dir1 -name *.java`

for temp in $res1
do
	myname=`basename $temp`
	res2=`find $dir2 -name $myname`
	
	diff $temp $res2 >/dev/null 2>&1
	if [ $? -eq 1 ] 
	then
		echo $myname
	fi
done

