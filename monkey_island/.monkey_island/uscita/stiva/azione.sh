#!/bin/bash

errore()
{
echo
echo Hai sbagliato, riprova!
echo
if [ ! -e ./winter ]; then
	touch -p ./winter
fi

if [ ! -e ./kechulc ]; then
	touch -p ./kechulc
fi

if [ ! -e ./taylor ]; then
	touch -p ./taylor
fi

if [ ! -e ./cooper ]; then
	touch -p ./cooper
fi

if [ ! -e ./blake ]; then
	touch -p ./blake
fi

}

bravo()
{
	echo
	echo Hai indovinato, bravo!
	echo Infatti il peggior nemico di Guybrush è proprio LeChuck
	echo
	sleep 2
	echo
	echo  ... Complimenti!
	echo  Sei riuscito a liberare Elaine e sei diventato un vero pirata!!!
	echo
	source ../../fine/azione.sh
}

if [ ! -e ./kechulc ]; then errore
else
	if [ ! -d ./winter ] || [ ! -d ./cooper ] || [ ! -d ./taylor ] || [ ! -e ./blake ]; then
	bravo
	else
	echo ne deve rimanere solo 1...
	fi
fi
