#!/bin/bash

# Nella directory files1 sono contenuti alcuni file che sono gli elaborati d'esame
# dell'esame scritto di sistemi operativi, consegnati dagli studenti mediante
# l'applicativo web eol.unibo.it.
# Gli studenti fanno l'upload di un file che come nome ha la login di posta
# dello studente (senza @studio.unibo.it) e come estensione ha una estensione
# qualunque (ad esempio .docx .odt .txt o altro).
# Ad esempio:	martin.lutero4.docx
# I nomi originali dei files quindi non hanno spazi in mezzo.
# 
# Purtroppo, l'applicativo web cambia il nome dei files e aggiunge al vecchio nome
# un prefisso (cioè come parte iniziale del nome) formato da tre parti
# tra loro concatenate dal carattere _ e in particolare :
# - una stringa che contiene nome e cognome dello studente (possono comparire spazi);
# - la stringa assignsubmission_file_ ;
# 
# Quindi ad esempio il file 	alvaro.bautista2.txt
# diventa 'Alvaro Bautista Lario_2123546_assignsubmission_file_alvaro.bautista2.txt'
# ed il file aristide.mingone.txt
# diventa  'Aristide Mingone_4123426_assignsubmission_file_aristide.mingone.txt'
# e cosi' via.
# 
# Bisogna creare uno script rinomina.sh, contenuto nella directory superiore a files1,
# che copia i file contenuti in files1
# mettendoli nella directory files2 e cambiando loro nome.
# Il nuovo nome deve essere il nome originario del file,
# prima che eol.unibo.it lo modificasse.
# 
# Per esempio, se la directory files1 contiene i 5 files:
# 
# 	'Alvaro Bautista Lario_2123546_assignsubmission_file_alvaro.bautista2.txt'
# 	'Aristide Mingone_4123426_assignsubmission_file_aristide.mingone.txt'
# 	'Carmelo Scolappione_6641665_assignsubmission_file_carmelo.scolap.odt'
# 	'Filippo Lutterotti_1235465_assignsubmission_file_filippo.lutterotti.docx'
# 	'Martin Lutero_1235465_assignsubmission_file_martin.lutero4.docx'
# 
# allora, dopo l'esecuzione dello script rinomina.sh,
# la directory files2 dovrà contenere i seguenti files:
# 
# 	alvaro.bautista2.txt
# 	aristide.mingone.txt
# 	carmelo.scolap.odt
# 	filippo.lutterotti.docx
# 	martin.lutero4.docx

for name in files1/* ; do cp "${name}" files2/${name##*_}  ; done

