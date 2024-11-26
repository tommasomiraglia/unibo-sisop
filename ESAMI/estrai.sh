#!/bin/bash
SupportSum=0
exec {FD}< input1.txt
while read -u ${FD} VAR;do
	for ((INDICE=0; $INDICE<${#VAR}; INDICE=${INDICE}+1)) ; do 
		if [[ ${VAR:${INDICE}:1}=="," ]];then
			
		
		fi 
	done;
done
