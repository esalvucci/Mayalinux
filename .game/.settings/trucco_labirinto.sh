#!/bin/bash

#Questo script sostituisce l'alias che permette di arrivare alla fine del labirinto

# Ho rimosso l'alias da $GAME/azione.sh perchè il trucco dipende da zenity, non sempre presente

ENTRY=`zenity --title="Labirinto" --password`

case $? in
         0)

		if [ "${ENTRY}" == "lab" ] ; then
			cd   $CURRENT_DIR/livello_0/a/d/s/d/a/a/a/d/s
			echo "vai alla fine del labirinto" 
		else
			echo "codice sbagliato"
		fi	 	
		;;
         1)
                echo "Stop";;
        -1)
                echo "An unexpected error has occurred.";;
esac
