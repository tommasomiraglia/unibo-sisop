#!/bin/bash
STRINGA="$*"
x=0
y=0
contX=0
contY=0
LONGSTRING=${#STRINGA}
if (( ${#STRINGA}%2==0 ));then
	for ((INDICE=0; $INDICE<${#STRINGA}; INDICE=${INDICE}+1)) ; do 
		if [[ ${STRINGA:${INDICE}:1} == "A" ]];then
			(( x=$x+1 ))
		elif [[ ${STRINGA:${INDICE}:1} == "B" ]];then
			(( y=$y+1 ))
		else 
			echo "falso"
			break
		fi
	done
	for ((INDICE=0; $INDICE<${LONGSTRING:0:${x}}; INDICE=${INDICE}+1)) ; do 
                if  [[ ${STRINGA:${INDICE}:1} == "A" ]];then
			((contX=$contX+1))
		fi
	done
	if [[ $x==$y && $contX==$y ]];then
		echo "vero"
	fi
else
	echo "falso"
fi
