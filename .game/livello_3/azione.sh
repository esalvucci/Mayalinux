#!/bin/bash

#controllo se esiste la directory "uomo" e quindi se la risposta al quesito del governatore è giusta o no
ok()
{
cat ../.settings/$GAME/testi_livello_3/ok 
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

source .oggetti.sh
cd ../livello_4

touch -t 210005230404 $CURRENT_DIR/livello_4/archivio/$OGGETTO_1
touch -t 210005230202 $CURRENT_DIR/livello_4/archivio/$OGGETTO_2
touch -t 210005230103 $CURRENT_DIR/livello_4/archivio/$OGGETTO_3
touch -t 210005230301 $CURRENT_DIR/livello_4/archivio/$OGGETTO_4
touch -t 210005230502 $CURRENT_DIR/livello_4/archivio/$OGGETTO_5
touch -t 210005230605 $CURRENT_DIR/livello_4/archivio/$OGGETTO_6
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
