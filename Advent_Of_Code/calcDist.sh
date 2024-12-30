#!/bin/bash
> 1.txt
> 2.txt
> support.txt
while read A B;do
	echo $A >> 1.txt
	echo $B >> 2.txt
done<list.txt

paste <(sort -n 1.txt) <(sort -n 2.txt) > support.txt #unisce le colonne paste molto figo

#ALGORITMO DI CONFRONTO
cont=0
while read A B;do
	if [[ $A -ge $B ]];then
		((cont=$cont+($A-$B)))
	else 
		((cont=$cont+($B-$A)))
	fi
done<support.txt
echo ${cont}
