#!/bin/bash

#clear
cat $CURRENT_DIR/.settings/$GAME/labir.txt
NUMERO_LIVELLO=1
export $LIVELLO_STRINGA$NUMERO_LIVELLO
cd $CURRENT_DIR/livello_1
mkdir -p equipaggiamento

source .oggetti.sh

touch $OGGETTO_1
touch $OGGETTO_2
touch $OGGETTO_3
touch $OGGETTO_4
touch $OGGETTO_5
