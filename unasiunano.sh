#!/bin/bash

# 36) Scrivere uno script unasiunano.sh che prende delle righe di testo dallo standard
# input e visualizza le righe una si ed una no.

bool=0
while read RIGA ; do
if [[ ${bool} -eq 0 ]];then 
	echo "${RIGA}"
	bool=1
else # errore commesso: non ho messo else quindi faceva bool=0 ogni volta+
	bool=0
fi
done
