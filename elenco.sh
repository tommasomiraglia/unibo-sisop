#!/bin/bash
#/home/tommaso/Documenti/BASH
LungNomiDirectory=0
NumFile=0
for elem in ./* ; do
	if [[ -d $elem ]]; then
		((LungNomiDirectory=$LungNomiDirectory+${#elem}))
	elif [[ -f $elem ]]; then
		((NumFile=$NumFile+1))
	fi
done
echo $LungNomiDirectory
echo $NumFile
