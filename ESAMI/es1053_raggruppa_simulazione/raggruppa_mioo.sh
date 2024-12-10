#!/bin/bash

> support.txt # creiamo il file e in caso lo svuotiamo 
while read A B motivo D;do
	if (( $(grep -c cadutevic.txt) < 1 ));then
		echo "$motivo">> support.txt
		#~ echo $(grep -c cadutevic.txt)>> support.txt
	fi
done < cadutevic.txt
cat support.txt
rm support.txt
