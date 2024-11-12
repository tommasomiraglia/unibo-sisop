#!/bin/bash
RISULTATO=$*
RIS=1
COUNT=1
while ((${COUNT}<=RISULTATO));
	do ((RIS=${RIS}*COUNT))
	((COUNT=${COUNT}+1))
done;
echo "${RIS}"
