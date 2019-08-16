#!/bin/bash

# inizia il lancio del gioco, con titolo, autori e spiegazione
cat ~/.mayalinux/$GAME/.settings/$GAME/titolo.txt
echo Premi Invio...
read

clear
cat ~/.mayalinux/$GAME/.settings/autor.txt
echo Premi Invio...
read

clear
cat ~/.mayalinux/$GAME/.settings/regole.txt
echo Premi Invio...
read

clear
cat ~/.mayalinux/$GAME/.settings/$GAME/leggimi.txt
echo Premi Invio...
read

clear
cat ~/.mayalinux/$GAME/.settings/consiglio_labirinto.txt
echo
echo Premi Invio per entrare nella $(cat ~/.mayalinux/$GAME/.settings/$GAME/nome_labirinto.txt)
read

LIVELLO_STRINGA='livello_'
NUMERO_LIVELLO='0'

LIVELLO=$LIVELLO_STRINGA$NUMERO_LIVELLO

# se esiste un file .auto.sh nella directory lo esegue
export PROMPT_COMMAND="test -f ./.auto.sh && source ./.auto.sh"

# Il path HOME punta a "labirinto" in modo che i ragazzi non tornino nella home con il comando cd
#export HOME=$PWD/$GAME'/livello_0'
export HOME_OLD=$HOME
export HOME=~/.mayalinux/$GAME'/livello_0'

cd livello_0

