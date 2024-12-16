#!/bin/bash

STRINGA=$1
str_sup=""
for ((INDICE=${#STRINGA}; $INDICE>=0; INDICE=${INDICE}-1)) ; do 
	str_sup=${str_sup}${STRINGA:${INDICE}:1} 
done
echo $str_sup
