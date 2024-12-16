#~ Realizzare uno script bash che scrive sullo standard output solo il TERZO campo di ciascuna riga
#~ del file cadutevic.txt
IFS=$'\"'
while read A B C D E F G;do
	echo $F
done < cadutevic.txt
