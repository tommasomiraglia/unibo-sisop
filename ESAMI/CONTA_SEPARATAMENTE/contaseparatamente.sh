#!/bin/bash
#~ Realizzare uno script bash contaseparatamente.sh che effettua le seguenti operazioni:
#~ Lo script prende un numero variabile di argomenti, al massimo 9.
#~ Ciascun argomento è il nome di un file.
#~ Lo script scrive sullo standard output il numero totale di righe dei file passati come argomenti di
#~ indice pari.
#~ Lo script scrive sullo standard error il numero totale di righe dei file passati come argomenti di
#~ indice dispari.
#~ Realizzare poi uno script bash lancia.sh che:
#~ lancia l'esecuzione dello script contaseparatamente.sh passando allo script come argomenti i
#~ primi 7 file che si ottengono come standard output del comando ls -S1 /usr/include/*.h
#~ Il modo in cui lo script lancia.sh lancia l'esecuzione di contaseparatamente.sh deve ridirezionare
#~ sia lo standard output che lo standard error di contaseparatamente.sh sullo standard error di
#~ lancia.sh stesso.
#~ Mi raccomando, verificare che lo script lancia.sh produca il suo output sullo standard error.
set +x
var=$*
CONT_P=0
CONT_D=0

if [[ $1 != "" ]];then
while read RIGA;do 
	((CONT_D=$CONT_D+1))
done<$1
fi

if [[ $3 != "" ]];then
while read RIGA;do 
	((CONT_D=$CONT_D+1))
done<$3
fi

if [[ $5 != "" ]];then
while read RIGA;do 
	((CONT_D=$CONT_D+1))
done<$5
fi

if [[ $7 != "" ]];then
while read RIGA;do 
	((CONT_D=$CONT_D+1))
done<$7
fi

if [[ $9 != "" ]];then
while read RIGA;do 
	((CONT_D=$CONT_D+1))
done<$9
fi

echo $CONT_D 1>&2

if [[ $2 != "" ]];then
while read RIGA;do 
	((CONT_P=$CONT_P+1))
done<$2
fi
if [[ $4 != "" ]];then
while read RIGA;do 
	((CONT_P=$CONT_P+1))
done<$4
fi
if [[ $6 != "" ]];then
while read RIGA;do 
	((CONT_P=$CONT_P+1))
done<$6
fi
if [[ $8 != "" ]];then
while read RIGA;do 
	((CONT_P=$CONT_P+1))
done<$8
fi
echo $CONT_P

#~ for (( i=1; i<=$#;i++));do
	#~ RIGHE=$(wc -l ${!i})
	#~ RIGHE=${RIGHE%% *}
	#~ if (($i%2==0));then
		#~ ((CONT_D=$CONT_D+))
	#~ else
		
	#~ fi
#~ done	
