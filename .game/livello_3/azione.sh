#!/bin/bash

#controllo se esiste la directory "uomo" e quindi se la risposta al quesito del governatore Ã¨ giusta o no
ok()
{
cat ../.settings/$GAME/testi_livello_3/ok 

cp ../.settings/$GAME/testi_livello_4/leggimi.txt ../livello_4/leggimi.txt

if [ $GAME == "monkey_island" ] ; then
	PAROLA='banana'
	RISPOSTA='monkey'
fi

if [ $GAME == "matrix" ] ; then
	PAROLA='cella'
	RISPOSTA='vigilant'
fi

if [ $GAME == "star_wars" ] ; then
	PAROLA='jarjar'
	RISPOSTA='fener'
fi

touch ../livello_4/$PAROLA

echo "|  Dovrai ** creare una parola ** utilizzando le lettere di altre parole.   |" >> ../livello_4/leggimi.txt
echo "|       Le parole che ti serviranno sono i nomi dei file contenuti          |" >> ../livello_4/leggimi.txt
echo "|                     nella cartella archivio                               |" >> ../livello_4/leggimi.txt
echo "|        visualizza i file all'interno di archivio con il comando           |" >> ../livello_4/leggimi.txt
echo "|                          ls -l archivio                                   |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|                       Esempio: $ ls -l archivio                           |" >> ../livello_4/leggimi.txt
echo "|Permessi  H.Link Utente gruppo Dim. Data  +++Ore e minuti +++  Nome        |" >> ../livello_4/leggimi.txt
echo "| -rw-r--r--    1  scout  scout 2403 ago 27     20:10        leggimi.txt    |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|      per decifrare la parola è importante fare attenzione all'ordine      |" >> ../livello_4/leggimi.txt
echo "|              in cui sono disposte le ore, i minuti e i nomi               |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|                    Quando avrai scoperto la parola                        |" >> ../livello_4/leggimi.txt
echo "|                rinomina il file $PAROLA con il comando                    |" >> ../livello_4/leggimi.txt
echo "|                       mv $PAROLA codice_trovato                           |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|                  e passa al livello sucessivo con il comando              |" >> ../livello_4/leggimi.txt
echo "|                              source azione.sh                             |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|___________________________________________________________________________|" >> ../livello_4/leggimi.txt

rm -r uomo


mkdir -p ../livello_4/archivio
source .oggetti.sh
#alias ls='function _ls() { ls -l $0| awk '{print $8 "\t" $9}'}; _ls'
NUMERO_LIVELLO=4
export LIVELLO=$LIVELLO_STRINGA$NUMERO_LIVELLO

cd ../livello_4

}

sbagliato()
{
echo
echo Mi spiace, ma la risposta è errata! Puoi riprovare.
echo
}

if [ -d ./uomo ]; then
ok
else
sbagliato
fi
