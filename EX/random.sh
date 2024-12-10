#!/bin/bash
cont=0
bool=0
while [[ $bool -eq 0 ]];do
	var_support=$(($RANDOM))
	if (($var_support % 10==2));then
		echo $RANDOM
		bool=1
	else
		((cont=$cont+1))
	fi
done
echo $cont
