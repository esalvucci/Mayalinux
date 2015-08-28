#!/bin/bash

# Dalla versione 2013 è stato ripristinato il trucco che porta alla fine del labirinto
# digitare l'alias "lab", la password richiesta è "lab"

export CURRENT_DIR=`pwd`
alias lab="cd '$CURRENT_DIR'/.settings && source trucco_labirinto.sh"

# inizia il lancio del gioco, con titolo, autori e spiegazione
more .settings/$GAME/titolo.txt
echo Premi Invio...
read

clear
more .settings/autor.txt
echo Premi Invio...
read

clear
more .settings/regole.txt
echo Premi Invio...
read

clear
more .settings/$GAME/leggimi.txt
echo Premi Invio per entrare nella $(cat .settings/$GAME/nome_labirinto.txt)
read

LIVELLO_STRINGA='livello_'
NUMERO_LIVELLO='0'

LIVELLO=$LIVELLO_STRINGA$NUMERO_LIVELLO

# se esiste un file .auto.sh nella directory lo esegue
export PROMPT_COMMAND="test -f ./.auto.sh && source ./.auto.sh"
cd $CURRENT_DIR/livello_0

