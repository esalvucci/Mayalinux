#!/bin/bash

#controllo se esiste la directory "uomo" e quindi se la risposta al quesito del governatore è giusta o no
ok()
{
cat ../.settings/$GAME/testi_livello_3/ok 

cp ../.settings/$GAME/testi_livello_4/leggimi.txt ../livello_4/leggimi.txt

echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|               Sopri il codice criptato cercando nell'archivio             |" >> ../livello_4/leggimi.txt
echo "|                  con il comando 'ls -l archivio'                          |" >> ../livello_4/leggimi.txt
echo "|                  fai attenzione ad ore e minuti!                          |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|                 Quando avrai scoperto il codice                           |" >> ../livello_4/leggimi.txt
echo "       rinomina il file banana con il comando 'mv $OGGETTO_MV <codice>'    " >> ../livello_4/leggimi.txt
echo "|                  ed esegui 'source azione.sh'                             |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|                                                                           |" >> ../livello_4/leggimi.txt
echo "|___________________________________________________________________________|" >> ../livello_4/leggimi.txt

rmdir uomo

# Qui bisogna mettere uno script che esegua le prossime 22 righe in base a $GAME
if [ $GAME == "monkey_island" ] ; then
	touch ../livello_4/banana
	RISPOSTA='monkey'
fi

if [ $GAME == "matrix" ] ; then
	touch ../livello_4/cella
	RISPOSTA='vigilant'
fi

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
