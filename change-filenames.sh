#! /bin/bash

_dfiles="*.txt"
echo $_dfiles

count=10
underscore="_"
for file in $_dfiles
do
	lastpart=$(echo $file| cut -d'_' -f 2)
	newname="$count$underscore$lastpart"
	mv $file $newname
	count=$(($count+1))
done