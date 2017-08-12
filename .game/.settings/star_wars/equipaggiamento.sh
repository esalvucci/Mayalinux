#!/bin/bash

#
# ci sarebbe da impostare il controllo dei livelli
NUMERO_LIVELLO=1
#

LIVELLO=$LIVELLO_INIZIO_STRINGA$NUMERO_LIVELLO

#se la cartella equipaggiamento è vuota evidentemente non ci si è equipaggiati!

if [ ! -e ../$LIVELLO/equipaggiamento/spada_laser ] && [ ! -e ../$LIVELLO/equipaggiamento/blaster_e11 ] && [ ! -e ../$LIVELLO/equipaggiamento/x_wing ] && [ ! -e ../$LIVELLO/equipaggiamento/droide_protocollare ] && [ ! -e ../$LIVELLO/equipaggiamento/sguscio ] then 

	echo
	echo Attenzione, non ti sei equipaggiato!
	echo Torna a scegliere l\'equipaggiamento più adatto...
	echo
	rm -rf equipaggiamento/*
else
#
#per la versione 2013 si potrebbe pensare di mettere l'allenamento contro i pirati con gli insulti
# pro: sarebbe molto bello
# contro: rende il gioco molto più lungo, e non c'è tempo, siamo in ritardo!!!
#

cat  ../.settings/$GAME/testi_livello_2/generale.txt

#cp -r $CURRENT_DIR/.$GAME/livello_2 $CURRENT_DIR/
cd ../livello_2
source azione.sh

fi
