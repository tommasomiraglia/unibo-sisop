#!/bin/bash
CARATTERE_SUM=0
exec {FD}< /usr/include/stdio.h
while read -u ${FD} -N 1 -r StringaLetta; do
	((CARATTERE_SUM=$CARATTERE_SUM+1))
	echo $CARATTERE_SUM
done
exec {FD}<&-
