#!/bin/bash

#
## controllo se la risposta all'indovinello è giusta
#

if [ -e $RISPOSTA ] ; then
	echo GRANDIOSO!!!
	echo Hai trovato la giusta decodifica!
	echo
	
	cat ../.settings/$GAME/testi_livello_4/ok	
#	cd ../livello_5

else
	echo
	echo Risposta errata! Riprova...
	echo
	if [ $GAME == 'matrix' ] ; then
		touch cella
	fi
	
	if [ $GAME == 'monkey_island' ] ; then
		touch banana
	fi
fi
