#!/bin/bash

#CONSEGNA
# script che legge nella directory /usr/include/stdio.h
# ogni riga e stampa solo la terza parola

# INFORMAZIONI
# -u (seguita dal file descriptor del file aperto) per
#indicare al comando read da quale file aperto deve essere effettuata la lettura

CONT=0
exec {FD}< /usr/include/stdio.h
while read -u ${FD} A B C D; 
do
	if [[ !(${C} == "") ]] then
		echo "${C}"
	fi
done
exec {FD}<&-
