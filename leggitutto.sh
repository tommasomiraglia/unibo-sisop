#!/bin/bash
exec {FD}< miofileNoNL.txt
while read -u ${FD} StringaLetta; [[ $? == 0 || ${RIGA} != "" ]] ;
do
	echo "${StringaLetta}"
done
exec {FD}<&-


