#!/bin/bash

cat .settings/$GAME/titolo.txt
echo Premi Invio...
read

clear
cat .settings/autor.txt
echo Premi Invio...
read

clear
cat .settings/$GAME/leggimi.txt
echo Premi Invio
read

clear
cat .settings/$GAME/regole.txt

echo Premi Invio per accedere ai motori della nave...
read

LIVELLO_INIZIO_STRINGA='livello_'
NUMERO_LIVELLO=0

LIVELLO=$LIVELLO_INIZIO_STRINGA$NUMERO_LIVELLO
cd $LIVELLO
