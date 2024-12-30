#!/bin/bash
STRINGA=$1
for ((INDICE=0; $INDICE<${#STRINGA}; INDICE=${INDICE}+1));do
	echo ${STRINGA:${INDICE}:1} 
done | sort | uniq -c | while read A B;do echo $B $A ;done

