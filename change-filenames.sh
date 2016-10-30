#! /bin/bash

_dfiles="*.txt"

#have a look at the files that you would be renaming....
#echo $_dfiles 

count=0
underscore="_"
for file in $_dfiles
do
	lastpart=$(echo $file| cut -d'_' -f 2)
	#the filenames is renamed to "count_original_filename"
	newname="$count$underscore$lastpart"
	mv $file $newname
	count=$(($count+1))
done
