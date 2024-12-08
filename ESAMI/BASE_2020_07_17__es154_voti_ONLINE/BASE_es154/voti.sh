#!/bin/bash
### Nei commenti che seguono vedete dei suggerimenti sull'algoritmo da
### seguire per produrre l'output corretto.
###

# I voti della seconda prova li devo mettere tutti nello standard output


# Poi devo mettere nello standard output i voti della prima prova
# ottenuti dagli studenti che non hanno un voto nella seconda prova

bool=0
while read A B;do
	echo $A $B
done< esame2.txt

while read A B; do
	while read C D; do
		if [[ $A -eq $C ]]; then
			bool=1
		fi
	done< esame2.txt
	if [[ $bool -ne 1 ]];then
		echo $A $B
	fi
	bool=0
done< esame1.txt

