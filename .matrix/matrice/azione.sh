#!/bin/bash
#set livello 3

if [ ! -e ../matrice/equipaggiamento/pistola ] && [ ! -e ../matrice/equipaggiamento/moto ] && [ ! -e ../matrice/equipaggiamento/cellulare ] && [ ! -e ../matrice/equipaggiamento/esplosivo ] && [ ! -e ../matrice/equipaggiamento/giubbotto ]; then 

	echo
	echo Attenzione, non ti sei equipaggiato!
	echo Torna a scegliere l\'equipaggiamento più adatto...
	cd ../matrice

else


echo 
echo Dopo esserti equipaggiato con l\'oggetto che pensi ti sia utile prosgui la tua ricerca...
echo
sleep 2
echo
echo ti sei addentrato nel quartier generale! 
echo
echo
cd ../quartiere

fi

