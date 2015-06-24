#!/bin/bash

# per la versione 2013 è stato ripristinato il trucco che porta alla fine del labirinto
# digitare l'alias "lab", la password richiesta è "lab"

export CURRENT_DIR=`pwd`
alias lab="cd '$CURRENT_DIR'/.settings && source trucco_labirinto.sh"

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

# chroot per evitare che i ragazzi con "cd .." escano dal gioco
#sudo mount -o bind /dev /tmp/dev
#sudo mount -t proc none /tmp/proc


# se esiste un file .auto.sh nella directory lo esegue
#trap 'test -f ./.nocd && cd -' DEBUG

LIVELLO_STRINGA='livello_'
NUMERO_LIVELLO='0'

LIVELLO=$LIVELLO_STRINGA$NUMERO_LIVELLO

export PROMPT_COMMAND="test -f ./.auto.sh && source ./.auto.sh"
cd $CURRENT_DIR/livello_0

