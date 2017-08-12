#!/bin/bash

#
## controllo se la risposta all'indovinello è giusta
#

if [ -e $RISPOSTA ] ; then
	echo GRANDIOSO!!!
	echo Hai trovato la giusta decodifica!
	echo
	
	cat ../.settings/$GAME/testi_livello_4/ok	
	
	cp ../.settings/$GAME/testi_livello_5/leggimi.txt ../livello_5/
	alias grep='grep -rnIi --color'
	alias ls='ls'
	
	NUMERO_LIVELLO=5
	export LIVELLO=$LIVELLO_STRINGA$NUMERO_LIVELLO
	
	cd ../livello_5
	
	source .oggetti.sh
else
	echo
	echo Risposta errata! Riprova...
	echo
	
	#if [ $GAME == 'matrix' ] ; then
	#	touch cella
	#fi
	
	#if [ $GAME == 'monkey_island' ] ; then
	#	touch banana
	#fi
	
	#if [ $GAME == 'star_wars' ] ; then
	#	touch jarjar
	#fi

	touch $PAROLA
fi
