#!/bin/bash

# permetto di eseguire tutti i file, compresi quelli nelle cartelle e sottocartelle
chmod -Rf +x * 

# Le versioni di Mayalinux sono 2: Matrix o Monkey Island, scegliamo a quale vogliamo giocare
echo "Quale avventura vuoi iniziare?"
echo "        Matrix        /        Monkey Island        "
echo
echo " 1 - Matrix"
echo " 2 - Monkey Island"
echo
echo Digita 1 o 2 e poi Invio
echo
read risposta

if [[ $risposta < 1 || $risposta > 2 ]] ; then 
        echo "digita 1 o 2" 2>/dev/null
else
 
        if [ $risposta -eq 1 ] ; then
                GAME="matrix"
        elif [ $risposta -eq 2 ] ; then
                GAME="monkey_island"
        fi
fi

# Ora che so il gioco scelto posso utilizzare $GAME

# Il path HOME punta a "labirinto" in modo che i ragazzi non tornino nella home con il comando cd
export HOME=$PWD/$GAME'/livello_0/'

## TODO
# GAME_TITLE --> $GAME senza "_" e con le iniziali maiuscole
GAME_TITLE=$GAME        # +++ Da correggere +++

# vengono definiti i colori e il titolo del terminale
export PS1='\e[1;35m \[\e]0;'$GAME_TITLE'\a\]'$GAME_TITLE' $ '                                                                                                                                  
# viene rimossa la cartella monkey_island (e poi ricreata) in modo che le modifiche ai file, fatte durante una partita, vengano eliminate prima della partita sucessiva                         
if [ -d $GAME ] ; then
	rm -rf $GAME                                                                                                                                                                                    
fi

cp -ar .game $GAME
cd $GAME
source azione.sh
