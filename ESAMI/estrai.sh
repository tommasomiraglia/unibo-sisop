#!/bin/bash
IFS=$','
SupportSum=0
exec {FD}< input1.txt
while read -u ${FD} A B C;do
	((SupportSum=$SupportSum+$B))
	echo "$A,$C"
done
echo "$SupportSum"
exec {FD}<&-
