#!/bin/bash

# Le versioni di Mayalinux sono 2: Matrix o Monkey Island, scegliamo a quale vogliamo giocare
echo "Quale avventura vuoi iniziare?"
echo
echo " 1 - Matrix"
echo " 2 - Monkey Island"
echo " 3 - Star Wars"
echo
echo Digita 1, 2 o 3 e poi Invio
echo
read risposta

if [[ ! $risposta || $risposta = *[^1-3]* ]]; then
        echo "digita 1, 2 o 3" 2>/dev/null
else
	
	if [ $risposta -eq 1 ] ; then
                GAME="matrix"
	fi
	
	if [ $risposta -eq 2 ] ; then
                GAME="monkey_island"
	fi

	if [ $risposta -eq 3 ] ; then
        	GAME="star_wars"
	fi

	# Ora che so il gioco scelto posso utilizzare $GAME
	
	# Il path HOME punta a "labirinto" in modo che i ragazzi non tornino nella home con il comando cd
	export HOME=$PWD/$GAME'/livello_0'

	# GAME_TITLE --> $GAME senza "_" e con l' iniziale maiuscola
	# GAME_TITLE=$(echo "$GAME" | sed 's/(^)([a-z])/\U\2/g' | sed -r 's/(_)([a-z])/ \2/g')
	GAME_TITLE=$(tr '[:lower:]' '[:upper:]' <<< ${GAME:0:1})$(echo ${GAME:1} | tr '_' ' ')	
	
	# vengono definiti i colori del terminale in base all'ambientazione del gioco
	if [ $GAME == 'matrix' ] ; then
 		export PS1='\[\e[0;32m\]'$GAME_TITLE' $\[\e[m\] '
	fi
	
	if [ $GAME == 'monkey_island' ] ; then
 		export PS1='\[\e[1;35m\]'$GAME_TITLE' $\[\e[m\] '
	fi
	
	if [ $GAME == 'star_wars' ] ; then
 		export PS1='\[\e[1;33m\]'$GAME_TITLE' $\[\e[m\] '
	fi

	# viene rimossa la cartella monkey_island/matrix (e poi ricreata) in modo che le modifiche ai file, fatte durante una partita, vengano eliminate prima della partita sucessiva                         
	#rm -r !$(Licence|README|start.sh|.git|.game) 2&> /dev/null
	for gamesupported in matrix monkey_island star_wars; do
		if [[ -d "$gamesupported" ]] ; then
			rm -rf $gamesupported/
		fi
	done

	echo "Copio la directory di $GAME_TITLE, un attimo di pazienza"
	
	cp -aR .game $GAME
	clear
	cd $GAME
	

	# Imposto i comandi utilizzabili durante il gioco
	mkdir -p $HOME/../.settings/commands		
	
	ln -s /bin/mv $HOME/../.settings/commands/mv
	ln -s /bin/rm $HOME/../.settings/commands/rm
	ln -s /bin/date $HOME/../.settings/commands/date
	ln -s /bin/cd $HOME/../.settings/commands/cd
	ln -s /bin/ls $HOME/../.settings/commands/ls
 	ln -s /bin/cp $HOME/../.settings/commands/cp

	if [ -e /bin/grep ] ; then
		ln -s /bin/grep $HOME/../.settings/commands/grep
	fi

	if [ -e /usr/bin/grep ]; then
		# Su mac grep è in /usr/bin
		ln -s /usr/bin/grep $HOME/../.settings/commands/grep
	fi

	ln -s /bin/cat $HOME/../.settings/commands/cat
        ln -s /bin/source $HOME/../.settings/commands/source
	ln -s /bin/mkdir $HOME/../.settings/commands/mkdir
	ln -s /bin/sed $HOME/../.settings/commands/sed
	ln -s /bin/more $HOME/../.settings/commands/more
	ln -s /usr/bin/clear $HOME/../.settings/commands/clear
	ln -s /usr/bin/touch $HOME/../.settings/commands/touch
	ln -s /usr/bin/test $HOME/../.settings/commands/test
	ln -s /bin/sleep $HOME/../.settings/commands/sleep

	export PATH=$HOME/../.settings/commands

	source azione.sh

fi
