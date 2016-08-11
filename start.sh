#!/bin/bash

# permetto di eseguire tutti i file, compresi quelli nelle cartelle e sottocartelle

# Le versioni di Mayalinux sono 2: Matrix o Monkey Island, scegliamo a quale vogliamo giocare
echo "Quale avventura vuoi iniziare?"
echo
echo " 1 - Matrix"
echo " 2 - Monkey Island"
echo
echo Digita 1 o 2 e poi Invio
echo
read risposta

if [[ ! $risposta || $risposta = *[^1-2]* ]]; then
        echo "digita 1 o 2" 2>/dev/null
else
 
        if [ $risposta -eq 1 ] ; then
                GAME="matrix"
        elif [ $risposta -eq 2 ] ; then
                GAME="monkey_island"
        fi

	# Ora che so il gioco scelto posso utilizzare $GAME

	# Il path HOME punta a "labirinto" in modo che i ragazzi non tornino nella home con il comando cd
	export HOME=$PWD/$GAME'/livello_0/'

	# GAME_TITLE --> $GAME senza "_" e con l' iniziale maiuscola
	GAME_TITLE=$(echo "$GAME" | sed -r 's/(^)([a-z])/\U\2/g' | sed -r 's/(_)([a-z])/ \2/g')

	# vengono definiti i colori del terminale in base all'ambientazione del gioco
	if [ $GAME == 'matrix' ] ; then
 		export PS1='\[\e[0;32m\]'$GAME_TITLE' $\[\e[m\] \[\e[0;37m\] '
	fi
	
	if [ $GAME == 'monkey_island' ] ; then
 		export PS1='\[\e[1;35m\]'$GAME_TITLE' $\[\e[m\] \[\e[0;37m\] '
	fi

	# viene rimossa la cartella monkey_island/matrix (e poi ricreata) in modo che le modifiche ai file, fatte durante una partita, vengano eliminate prima della partita sucessiva                         
	#rm -r !$(Licence|README|start.sh|.git|.game) 2&> /dev/null
	for gamesupported in matrix monkey_island ; do
		if [[ -d "$gamesupported" ]] ; then
			rm -rf $gamesupported/
		fi
	done

	echo "Copio la directory di gioco $GAME, un attimo di pazienza"
	
	cp -ar .game $GAME
	clear
	cd $GAME
	source azione.sh

fi
