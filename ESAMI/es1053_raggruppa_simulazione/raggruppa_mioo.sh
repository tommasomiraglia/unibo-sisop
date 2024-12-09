#!/bin/bash

touch support.txt
cont=0

while read A B motivo D;do
	echo "$motivo">> support.txt
done < cadutevic.txt

while read motivi;do
	while read confronto;do
		if [[ $motivi == $confronto ]];then 
			((cont=$cont+1))
		fi
	done < support.txt
	#rimuovere la doppia stampa : 
	echo $motivi $cont 
	cont=0
done < support.txt

rm support.txt
