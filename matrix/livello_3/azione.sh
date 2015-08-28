#!/bin/bash

#controllo se esiste la directory "uomo" e quindi se la risposta al quesito del governatore è giusta o no
ok()
{
cat ../.settings/$GAME/testi_livello_3/ok 

cp ../.settings/$GAME/testi_livello_4/leggimi.txt ../livello_4/leggimi.txt

if [ $GAME == "monkey_island" ] ; then
	touch ../livello_4/banana
	PAROLA='banana'
	RISPOSTA='monkey'
fi

if [ $GAME == "matrix" ] ; then
	touch ../livello_4/cella
	PAROLA='cella'
	RISPOSTA='vigilant'
fi


echo "|               Sopri il codice cercando nell'archivio                      |" >> ../livello_4/leggimi.txt
echo "|                  con il comando 'ls -l archivio',                         |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|	                   Esempio: $ ls -l archivio                              |" >> ../livello_4/leggimi.txt
echo "|  Permessi Hard Link Utente gruppo Dimensione  Data   Ora    Nome         |" >> ../livello_4/leggimi.txt
echo "|  -rw-r--r--    1    scout  scout    2403     ago 27 20:10 leggimi.txt    |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|      per decriptarlo è importante fare attenzione all'ordine              |" >> ../livello_4/leggimi.txt
echo "|              in cui sono disposte le ore, i minuti e i nomi               |" >> ../livello_4/leggimi.txt
echo "|                 Quando avrai scoperto il codice                           |" >> ../livello_4/leggimi.txt
echo "  rinomina il file $PAROLA con il comando 'mv cella codice_trovato'          " >> ../livello_4/leggimi.txt
echo "|                  ed esegui 'source azione.sh'                             |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|___________________________________________________________________________|" >> ../livello_4/leggimi.txt

rmdir uomo


mkdir -p ../livello_4/archivio
source .oggetti.sh
#alias ls='function _ls() { ls -l $0| awk '{print $8 "\t" $9}'}; _ls'
cd ../livello_4

}

sbagliato()
{
echo
echo Mi spiace, ma la risposta \è errata! Puoi riprovare.
echo
}

if [ -d ./uomo ]; then
ok
else
sbagliato
fi
