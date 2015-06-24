#!/bin/bash

#
# non ho messo il controllo: "attenzione, hai fatto il furbo, vieni rispedito nelle fogne
#
#da ricordare che per il 2013 andrebbe spiegato meglio l'indovinello
#



#
## controllo se la risposta all'indovinello è giusta
#

if [ -e monkey ]; then

	echo GRANDIOSO!!!
	echo Hai trovato la giusta decodifica!
	echo
	echo Corri a comprare una nave, poi sarai pronto per partire con il tuo equipaggio verso Monkey Island!
	echo
	echo
	sleep 3
	echo
	echo
	echo   ... sei riuscito a comprare una nave dal venditore Stan, ora tu, Carla, Otis e Murray
	echo   siete pronti per salpare, destinazione: M o n k e y   I s l a n d!!!
	echo
	
	dd if=/dev/zero of=../uscita/jack_sparrow_fs bs=2M count=2 &> /dev/null
	dd if=/dev/zero of=../uscita/capitan_uncino_fs bs=2M count=2 &> /dev/null
	dd if=/dev/zero of=../uscita/barbarossa_fs bs=2M count=2 &> /dev/null	
	dd if=/dev/zero of=../uscita/mancomb_seepgood_fs bs=2M count=2 &> /dev/null

	#cp -r $CURRENT_DIR/.$GAME/livello_5 $CURRENT_DIR/
	cd ../livello_5

#
#lo script pippo reprime l'output di mkfs.ext 4
#

	alias mkfs.ext4="./.pippo"	
	
	if [ ! -e ../livello_5/.stiva/winter ]; then
		touch  ../livello_5/.stiva/winter
	fi

	if [ ! -e ../livello_5/.stiva/kechulc ]; then
		touch  ../livello_5/.stiva/kechulc
	fi

	if [ ! -e ../livello_5/.stiva/taylor ]; then
		touch  ../livello_5/.stiva/taylor
	fi

	if [ ! -e ../livello_5/.stiva/cooper ]; then
		touch  ../livello_5/.stiva/cooper
	fi

	if [ ! -e ../livello_5/.stiva/blake ]; then
		touch  ../livello_5/.stiva/blake
	fi
	
	
else
	echo
	echo Risposta errata! Riprova...
	echo
	touch banana
fi

