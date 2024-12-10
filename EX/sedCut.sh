# 28) Scrivere un file di testo di almeno 5 righe, ciascuna contenente almeno 7 parole
# separate da spazi e da tabulazioni. Mettete in qualche parola anche un asterisco *.
# Poi utilizzare il comando cut per visualizzare a video, di ciascuna riga, solo i caratteri
# dal terzo al quinto e dal decimo al quindicesimo, compresi gli estremi.

cut –b 3-5,10-15 nomefile.txt 

# 29) Aggiungere al comando precedente, in pipe, tanti comandi (suggerimento: sed) per
# eliminare dall'output finale tutti gli spazi bianchi, tutte le tabulazioni, tutti gli
# asterischi. Vi ricordo di quotare con gli ' l'argomento passato a sed, per
# impedire che la bash ne interpreti il contenuto.

cut –b 3-5,10-15 nomefile.txt | sed 's/*//g' | sed 's/ //g' | sed 's/\t//g' 

# 30) Aggiungere in pipe il comando word count (wc) e fargli contare il totale dei
# caratteri contenuti nelle righe visualizzate sullo standard output. 

cut –b 3-5,10-15 nomefile.txt | sed 's/*//g' | sed 's/ //g' | sed 's/\t//g' | wc –c 
