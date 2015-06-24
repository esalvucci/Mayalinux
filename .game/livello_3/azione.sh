#!/bin/bash

#controllo se esiste la directory "uomo" e quindi se la risposta al quesito del governatore è giusta o no
ok()
{
echo COMPLIMENTI!
echo
echo Hai risposto saggiamente!
echo 
echo Il governatore ti libera ma, uscito dal palazzo, scopri che lo sceriffo Fester lo ha rapito.
echo 
echo Ti serve un equipaggio ed una nave per salvare Elaine Marley!
echo
 
rmdir uomo

# cp -r $CURRENT_DIR/.$GAME/livello_4 $CURRENT_DIR/

if [ ! -e ../livello_4/banana ]; then
touch ../livello_4/banana
fi

cd ../livello_4

touch -t 210005230404 $CURRENT_DIR/livello_4/archivio/backup
touch -t 210005230202 $CURRENT_DIR/livello_4/archivio/governatore
touch -t 210005230103 $CURRENT_DIR/livello_4/archivio/lampone
touch -t 210005230301 $CURRENT_DIR/livello_4/archivio/nave
touch -t 210005230502 $CURRENT_DIR/livello_4/archivio/Fester
touch -t 210005230605 $CURRENT_DIR/livello_4/archivio/Jolly_Roger
}

sbagliato()
{
echo
echo Mi spiace, ma la risposta \è errata! Puoi riprovare.
echo
}

if [ -d ./uomo ]; then
ok
else
sbagliato
fi
