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

	# viene rimossa la cartella monkey_island/matrix (e poi ricreata) in modo che le modifiche ai file, fatte durante una partita, vengano eliminate prima della partita sucessiva                         
	#rm -r !$(Licence|README|start.sh|.git|.game) 2&> /dev/null
	for gamesupported in matrix monkey_island star_wars; do
		if [[ -d "~/.mayalinux/$gamesupported" ]] ; then
			rm -rf "~/.mayalinux/$gamesupported/"
		fi
	done

	# Ora che so il gioco scelto posso utilizzare $GAME
	

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

	echo "Copio la directory di $GAME_TITLE, un attimo di pazienza"

	if [ -d ~/.mayalinux ] ; then
		rm -r ~/.mayalinux
	fi

	mkdir ~/.mayalinux
	cp -aR .game ~/.mayalinux/$GAME
	clear
	cd ~/.mayalinux/$GAME
	

	# Imposto i comandi utilizzabili durante il gioco
	mkdir -p ~/.mayalinux/.settings/commands		
	
	ln -s /bin/mv ~/.mayalinux/.settings/commands/mv
	ln -s /bin/rm ~/.mayalinux/.settings/commands/rm
	ln -s /bin/date ~/.mayalinux/.settings/commands/date
	ln -s /bin/cd ~/.mayalinux/.settings/commands/cd
	ln -s /bin/ls ~/.mayalinux/.settings/commands/ls
 	ln -s /bin/cp ~/.mayalinux/.settings/commands/cp

	if [ -e /bin/grep ] ; then
		ln -s /bin/grep ~/.mayalinux/.settings/commands/grep
	fi

	if [ -e /usr/bin/grep ]; then
		# Su mac grep è in /usr/bin
		ln -s /usr/bin/grep ~/.mayalinux/.settings/commands/grep
	fi

	ln -s /bin/cat ~/.mayalinux/.settings/commands/cat
        ln -s /bin/source ~/.mayalinux/.settings/commands/source
	ln -s /bin/mkdir ~/.mayalinux/.settings/commands/mkdir
	ln -s /bin/sed ~/.mayalinux/.settings/commands/sed
	ln -s /bin/more ~/.mayalinux/.settings/commands/more
	ln -s /usr/bin/clear ~/.mayalinux/.settings/commands/clear
	ln -s /usr/bin/touch ~/.mayalinux/.settings/commands/touch
	ln -s /usr/bin/test ~/.mayalinux/.settings/commands/test
	ln -s /bin/sleep ~/.mayalinux/.settings/commands/sleep

	export PATH=~/.mayalinux/.settings/commands
	
	source azione.sh

fi
