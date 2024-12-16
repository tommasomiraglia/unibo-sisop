#!/bin/bash

# cercare la directory che verifica le tre seguenti proprieta':
# - sta nell'albero che parte da /usr/include/
# - contiene almeno una 'a' nel proprio nome
# - e' quella modificata piu' di recente tra tutte quelle che
#   verificano le due precedenti proprieta'.
#
# Suggerimento: per verificare se il vostro script funziona 
# creare una directory che risponda alle caratteristiche:
# essendo la directory creata piu' di recente, dovrebbe essere quella
# il risultato trovato dal vostro script.

dir=""
for nome in /usr/include/*;do 
	if [[ -d $nome ]];then
		for ((INDICE=0; $INDICE<${#nome}; INDICE=${INDICE}+1));do 
			if [[ ${nome:${INDICE}:1} == "a" ]];then  
					if [[ $nome -nt $dir ]];then
						dir=$nome

					fi
			fi	
		done
	fi
done 
echo $dir
