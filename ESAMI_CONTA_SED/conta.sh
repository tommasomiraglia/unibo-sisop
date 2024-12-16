#!/bin/bash

# analizzare il contenuto del file /usr/include/stdio.h
# e generare una sequenza di righe del tipo:    numero parola
# che dice quali parole sono contenute nel file /usr/include/stdio.h
# e quante volte sono ripetute.
# Ad esempio, se il file contenesse le righe:
#  int i; struct a{ int f; int j };
#  void f( void );
#
# allora l'output dovrebbe essere:
#
# 3 int
# 2 void
# 1 i;
# 1 a{
# 1 f;
# 1 j
# 1 };
# 1 f(
# 1 );

# Suggerimenti: 
# 1) usare sed per spezzare le righe del file in tante righe quante sono le parole
#    sostituendo gli spazi e i tab con delle andate a capo. In tal modo ciascuna
#    nuova riga conterra' solo una parola oppure sara' una riga vuota.
# 2) eliminare le righe vuote.
# 3) ordinare le righe cosi' ottenute in modo che le righe uguali siano
#    raggruppate. usare sort
# 4) usare uniq per contare le righe uguali
# 5) per chi vuole esagerare, ordinare le parole contate cominciando da quelle contate piu' volte
#    a quelle contate meno volte.
sed 's/ /\n/g' /usr/include/stdio.h | sed 's/\t/\n/g' | 
   while read RIGA ; do if [[ -n "${RIGA}" ]] ; then echo "${RIGA}" ; fi ; done |
   sort | uniq -c | sort -n -r


