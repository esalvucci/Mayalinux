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
	
#	cd ../livello_5
else
	echo
	echo Risposta errata! Riprova...
	echo
	touch banana
fi

