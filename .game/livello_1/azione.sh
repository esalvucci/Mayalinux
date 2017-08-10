#!/bin/bash

#
# ci sarebbe da impostare il controllo dei livelli
NUMERO_LIVELLO=1
#

LIVELLO=$LIVELLO_STRINGA$NUMERO_LIVELLO

#se la cartella equipaggiamento è vuota evidentemente non ci si è equipaggiati!

if [ ! -e ../$LIVELLO/equipaggiamento/$OGGETTO_1 ] && [ ! -e ../$LIVELLO/equipaggiamento/$OGGETTO_2 ] && [ ! -e ../$LIVELLO/equipaggiamento/$OGGETTO_3 ] && [ ! -e ../$LIVELLO/equipaggiamento/$OGGETTO_4 ] && [ ! -e ../$LIVELLO/equipaggiamento/$OGGETTO_5 ]; then 
#if [ ! -e ../$LIVELLO/equipaggiamento/mentine_per_alito ] && [ ! -e ../$LIVELLO/equipaggiamento/boccale_di_grog ] && [ ! -e ../$LIVELLO/equipaggiamento/idolo_del_governatore ] && [ ! -e ../$LIVELLO/equipaggiamento/pollo_di_gomma ] && [ ! -e ../$LIVELLO/equipaggiamento/vanga ]; then 

	echo
	echo Attenzione, non ti sei equipaggiato!
	echo Torna a scegliere l\'equipaggiamento più adatto...
	echo
	rm -rf equipaggiamento/*
else

echo 
#sleep 1
cat ../.settings/$GAME/testi_livello_2/generale.txt

cd ../livello_2
source azione.sh

fi
