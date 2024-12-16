#!/bin/bash

#~ 51.Scrivere uno script puntini.sh che prende come argomento a riga di comando un
#~ intero positivo che rappresenta un certo numero di secondi. Lo script deve rimanere
#~ in esecuzione per quel numero di secondi e, ad ogni secondo, stampare a video un
#~ punto . seguito dal proprio PID. Ma senza andare a capo
NUM=0
while (( ${NUM} <= $1 )) ; do
sleep 1
echo -n ". ${BASHPID}"
((NUM=${NUM}+1))
done
