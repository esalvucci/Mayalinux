#!/bin/bash

#
## controllo se la risposta all'indovinello è giusta
#

if [ -e $RISPOSTA ] ; then
	echo GRANDIOSO!!!
	echo Hai trovato la giusta decodifica!
	echo
	
	more ../.settings/$GAME/testi_livello_4/ok	
	
	cp ../.settings/$GAME/testi_livello_5/leggimi.txt ../livello_5/
	alias grep='grep -rnIi --color'
	cd ../livello_5
	source .oggetti.sh
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
