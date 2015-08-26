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

alias ls="ls -l | awk '{print $8, $9}'"

echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|               Sopri il codice cercando nell'archivio                      |" >> ../livello_4/leggimi.txt
echo "|                  con il comando 'ls archivio',                            |" >> ../livello_4/leggimi.txt
echo "|      per decriptarlo è importante fare attenzione all'ordine              |" >> ../livello_4/leggimi.txt
echo "|              in cui sono disposte le ore e i minuti!                      |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|                 Quando avrai scoperto il codice                           |" >> ../livello_4/leggimi.txt
echo "  rinomina il file $PAROLA con il comando 'mv $OGGETTO_MV codice_trovato'    " >> ../livello_4/leggimi.txt
echo "|                  ed esegui 'source azione.sh'                             |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|___________________________________________________________________________|" >> ../livello_4/leggimi.txt

rmdir uomo


mkdir -p ../livello_4/archivio
source .oggetti.sh
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
