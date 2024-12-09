#!/bin/bash

# stampare a video il numero di parole "int" totali
# trovate tra le prime 10 parole di ciascuna riga
# del file ./prova.txt
# Attenzione, le parole che includono int non vanno contate.
# Ad esempio, le parole inta e bint non vanno contate.
# Il file passato come argomento ha 9 di queste parole int
# percio' lo script deve stampare a video 9

cont=0
while read A B C D E F G H N I;do
	if [[ $A == "int" ]];then ((cont=$cont+1));fi 
	if [[ $B == "int" ]];then ((cont=$cont+1));fi 
	if [[ $C == "int" ]];then ((cont=$cont+1));fi 
	if [[ $D == "int" ]];then ((cont=$cont+1));fi 
	if [[ $E == "int" ]];then ((cont=$cont+1));fi 
	if [[ $F == "int" ]];then ((cont=$cont+1));fi 
	if [[ $G == "int" ]];then ((cont=$cont+1));fi 
	if [[ $H == "int" ]];then ((cont=$cont+1));fi 
	if [[ $N == "int" ]];then ((cont=$cont+1));fi 
done < prova.txt
echo $cont
