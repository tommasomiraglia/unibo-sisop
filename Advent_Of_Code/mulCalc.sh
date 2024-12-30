#!/bin/bash
set -x
IFS=$',\n'
SOL=0
sed 's/(/\n/g' mul.txt | sed 's/)/\n/g' | grep -A 1 "mul"  | 
while read A B;do
	if [[ "$A" =~ ^-?[0-9]+$ && "$B" =~ ^-?[0-9]+$ ]] 2>/dev/null;then
		((SOL=$SOL+($A*$B)))
	fi
	echo $SOL
done

