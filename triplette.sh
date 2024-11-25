#!/bin/bash
NOMEFILES=`ls`
for nome1 in ${NOMEFILES}; do 
	for nome2 in ${NOMEFILES}; do
		for nome3 in ${NOMEFILES}; do
#			echo "(${nome1};${nome2};${nome3})";
			echo \(${nome1}\;{nome2}\;${nome3}\);
		done
	done
done
