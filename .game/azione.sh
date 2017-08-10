#!/bin/bash

export CURRENT_DIR=`pwd`

# inizia il lancio del gioco, con titolo, autori e spiegazione
cat .settings/$GAME/titolo.txt
echo Premi Invio...
read

clear
cat .settings/autor.txt
echo Premi Invio...
read

clear
cat .settings/regole.txt
echo Premi Invio...
read

clear
cat .settings/$GAME/leggimi.txt
echo Premi Invio per entrare nella $(cat .settings/$GAME/nome_labirinto.txt)
read

LIVELLO_STRINGA='livello_'
NUMERO_LIVELLO='0'

LIVELLO=$LIVELLO_STRINGA$NUMERO_LIVELLO

# se esiste un file .auto.sh nella directory lo esegue
export PROMPT_COMMAND="test -f ./.auto.sh && source ./.auto.sh"
cd $CURRENT_DIR/livello_0

