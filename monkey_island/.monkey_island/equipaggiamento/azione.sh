#!/bin/bash

#
# ci sarebbe da impostare il controllo dei livelli
# set livello 3
#

#se la cartella equipaggiamento è vuota evidentemente non ci si è equipaggiati!

if [ ! -e ../equipaggiamento/equipaggiamento/mentine_per_alito ] && [ ! -e ../equipaggiamento/equipaggiamento/boccale_di_grog ] && [ ! -e ../equipaggiamento/equipaggiamento/idolo_del_governatore ] && [ ! -e ../equipaggiamento/equipaggiamento/pollo_di_gomma ] && [ ! -e ../equipaggiamento/equipaggiamento/vanga ]; then 

	echo
	echo Attenzione, non ti sei equipaggiato!
	echo Torna a scegliere l\'equipaggiamento più adatto...
	echo
	cd ../equipaggiamento

else
#
#per la versione 2013 si potrebbe pensare di mettere l'allenamento contro i pirati con gli insulti
# pro: sarebbe molto bello
# contro: rende il gioco molto più lungo, e non c'è tempo, siamo in ritardo!!!
#

echo 
echo Dopo esserti equipaggiato con l\'oggetto che pensi ti sia utile sei pronto per allenarti contro gli altri pirati...
echo
sleep 2
echo
echo incontri il primo pirata, e ti sconfigge a suon di insulti
echo
echo
sleep 2
echo incontri il secondo pirata, e inizi a rispondere a tono ai suoi insulti, perdi ma con onore!
echo
echo
sleep 2
echo
echo
echo
sleep 1
source ../maestro_di_spada/azione.sh

fi

