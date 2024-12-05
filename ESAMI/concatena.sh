#!/bin/bash

# puoi implementare in modo migliore con un if iniziale per vedere se il file 
# esiste già e in caso crearlo o cancellarlo
exec {FW}> output.txt
for name in /usr/include/std*; do
	cont=0
	exec {FR}< $name 
	while read -u ${FR} StringaLetta;do
		((cont=$cont+1))
		if [[ $cont -eq 1 || $cont -eq 2|| $cont -eq 3 ]]; then
			echo "${StringaLetta}" >> output.txt
		fi
	done
	exec {FR}>&- 
done
exec {FW}>&-	
cat output.txt

