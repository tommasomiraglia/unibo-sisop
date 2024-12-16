#!/bin/bash

#~ Scrivere un file di testo che contenga almeno 5 righe. Passare il contenuto del file
#~ nello standard input di uno script seleziona.sh. Lo script deve selezionare le sole
#~ righe che contengono almeno un carattere A e contare il numero di caratteri totali
#~ delle sole righe selezionate. Suggerimento: guardate cosa fa il comando wc -c
grep A | wc -c
