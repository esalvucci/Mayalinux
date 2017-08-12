#!/bin/bash

# controllo se l'equipaggiamento scelto è giusto con la funzione "equi"

#questa funzione viene utilizzata se l'equipaggiamento scelto è giusto, le altre, se è sbagliato; una per ogni oggetto
vabene()
{

	NUMERO_LIVELLO=3
	export LIVELLO=$LIVELLO_STRINGA$NUMERO_LIVELLO
	cd ../livello_3
	cat ../.settings/$GAME/testi_livello_2/$OGGETTO_5
	cp ../.settings/$GAME/testi_livello_2/indovinello ../livello_3/leggimi.txt
	echo "|         Qual e' quell'animale che da giovane ha quattro zampe,           |" >> ../livello_3/leggimi.txt
	echo "|                     da adulto due e da vecchio tre?                      |" >> ../livello_3/leggimi.txt                                                                          
	echo "|                                                                          |" >> ../livello_3/leggimi.txt
	echo "|                                                                          |" >> ../livello_3/leggimi.txt
	echo "|                                                                          |" >> ../livello_3/leggimi.txt
	echo "|            per rispondere crea una cartella che abbia per                |" >> ../livello_3/leggimi.txt
	echo "|   che  abbia per nome la risposta, la cartella si crea con il comando    |" >> ../livello_3/leggimi.txt
	echo "|                     mkdir nome_della_cartella                            |" >> ../livello_3/leggimi.txt
	echo "|                                                                          |" >> ../livello_3/leggimi.txt
	echo "|  Una volta creata la cartella passa al livello sucessivo con il comando  |" >> ../livello_3/leggimi.txt
	echo "|                         source azione.sh                                 |" >> ../livello_3/leggimi.txt 
	echo "|                                                                          |" >> ../livello_3/leggimi.txt
	echo "|__________________________________________________________________________|" >> ../livello_3/leggimi.txt
 
}

del()
{
	NUMERO_LIVELLO=1
	export LIVELLO=$LIVELLO_STRINGA$NUMERO_LIVELLO

	cd ../livello_1
	rm -r ../livello_1/equipaggiamento/
	mkdir ../livello_1/equipaggiamento
}



oggetto_1()
{
	cat ../.settings/$GAME/testi_livello_2/$OGGETTO_1
	del
}

oggetto_2()
{
	cat ../.settings/$GAME/testi_livello_2/$OGGETTO_2
	del
}

oggetto_3()
{
	cat ../.settings/$GAME/testi_livello_2/$OGGETTO_3
	del
}

oggetto_4()
{
	cat ../.settings/$GAME/testi_livello_2/$OGGETTO_4
	del
}

equi()
{

if [ -e ../livello_1/equipaggiamento/$OGGETTO_1 ] ; then
oggetto_1
fi

if [ -e ../livello_1/equipaggiamento/$OGGETTO_2 ] ; then
oggetto_2
fi

if [ -e ../livello_1/equipaggiamento/$OGGETTO_3 ] ; then
oggetto_3
fi

if [ -e ../livello_1/equipaggiamento/$OGGETTO_4 ] ; then
oggetto_4
fi

if [ -e ../livello_1/equipaggiamento/$OGGETTO_5 ] ; then
vabene
fi

}

if [ -e ../livello_1/equipaggiamento/$OGGETTO_1 ]|| [ -e ../livello_1/equipaggiamento/$OGGETTO_2 ] || [ -e ../livello_1/equipaggiamento/$OGGETTO_3 ] || [ -e ../livello_1/equipaggiamento/$OGGETTO_4 ] || [ -e ../livello_1/equipaggiamento/$OGGETTO_5 ]; then 
	
equi

else

echo
	NUMERO_LIVELLO=1
	export LIVELLO=$LIVELLO_STRINGA$NUMERO_LIVELLO
	echo Attenzione, non ti sei equipaggiato!
	echo Torna a scegliere l\'oggetto pi� adatto...
	rm -r ../livello_1/equipaggiamento/*
	cd ../livello_1

fi
