#!/bin/bash

# Scrivere poi uno script parola.sh che usa piu' volte
# il precedente script lettera.sh
# per generare parole formate da quattro caratteri
# e visualizzarle sul proprio stdout.

stringa=""
lettera=""
for (( i=0; i<4;i++ )); do
	lettera=$(./lettera.sh)
	stringa=$stringa$lettera
done
echo $stringa
