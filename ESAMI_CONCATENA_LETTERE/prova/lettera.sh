#!/bin/bash
# Scrivere uno script lettera.sh che genera ad ogni invocazione
# una lettera a caso tra queste due a c
# e la stampa in output SENZA ANDARE A CAPO.
# Suggerimento: usare variabile RANDOM.
#


if [[ $(($RANDOM%2)) -eq 1 ]];then
	echo "c"
else	
	echo "a" 
fi
