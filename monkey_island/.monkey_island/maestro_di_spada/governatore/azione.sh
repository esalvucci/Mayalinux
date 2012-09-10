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

if [ ! -e ../../negozio/banana ]; then
touch ../../negozio/banana
fi

cd ../../negozio

touch -t 201205230404 $monkey_island_dir/negozio/archivio/backup
touch -t 201205230202 $monkey_island_dir/negozio/archivio/governatore
touch -t 201205230103 $monkey_island_dir/negozio/archivio/lampone
touch -t 201205230301 $monkey_island_dir/negozio/archivio/nave
touch -t 201205230502 $monkey_island_dir/negozio/archivio/Fester
touch -t 201205230605 $monkey_island_dir/negozio/archivio/Jolly_Roger
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
