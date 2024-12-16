#!/bin/bash


#~ 41++ per tutti i file contenuti nella directory /usr/include/
#~ (NON NELLE
#~ SOTTODIRECTORY) far vedere a video le righe che contengono almeno un carattere
#~ * e contare quante sono queste righe
total_lines=0

for file in /usr/include/*;do
	if [[ -r $file ]];then
		grep -d skip '*' $file
		line_count=$(grep  -d skip '*' "$file" | wc -l)
		((total_lines=$total_lines+$line_count))
	fi
done
echo $total_lines
