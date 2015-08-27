#!/bin/bash

if [ ! -e ./$FILE_4 ] || [ -e ./$FILE_1 ] || [ -e ./$FILE_2 ] || [ -e ./$FILE_3 ] ; then
        echo
        echo Hai scelto \(escluso\) il file sbagliato oppure non ne hai purificati 3,
        echo riprova!
        echo
	source .oggetti.sh  
else
        
	echo ...
        echo
        sleep 3
        clear
        echo 
        more ../.settings/$GAME/testi_livello_5/ok
	sleep 3
        more ../.settings/$GAME/testi_livello_5/uscita.txt
	
fi
