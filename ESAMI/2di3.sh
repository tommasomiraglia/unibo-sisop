#!/bin/bash
#Per ciascuna riga lo script mette sullo standard output una riga che contiene il solo secondo carattere della
#terza parola di quella riga.
#Se in una riga del file letto ci sono meno di 3 parole allora lo script non stampa nulla relativo a quella riga.
#Se nella terza parola di una riga del file ci sono meno di 2 caratteri allora lo script non stampa nulla relativo a
#quella riga
exec {FD}< /usr/include/stdio.h
while read -u ${FD} A B C D;do
	if [[ ${#C}>=3 ]];then
		echo ${C:1:1}
	fi
done
exec {FD}<&-
