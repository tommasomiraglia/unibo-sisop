#!/bin/bash
cont=0
> support.txt # creiamo il file e in caso lo svuotiamo 
while read A B motivo D;do
	if [[ $(grep -c $motivo support.txt) -lt 1 ]];then
		echo "$motivo $(grep -c $motivo cadutevic.txt)" >> support.txt
	fi
done < cadutevic.txt
cat support.txt
rm support.txt
