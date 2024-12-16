#!/bin/bash

# Lo script generacar.sh stampa in output un carattere casuale in {'a','t','x'} ed e' gia' fornito.

(( NUMERO=${RANDOM}%3 ))
if (( $NUMERO == 0 )) ; then echo  a 
elif (( $NUMERO == 1)); then echo t
else echo x
fi
