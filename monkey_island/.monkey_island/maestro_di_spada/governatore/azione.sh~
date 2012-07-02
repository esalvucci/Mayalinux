#!/bin/bash

#cat ./leggimi.txt

ok()
{
echo COMPLIMENTI!
echo
echo Hai risposto saggiamente!
echo 
echo Il governatore ti libera ma, uscito dal palazzo, scopri che lo sceriffo Fester ha rapito il governatore.
echo 
echo Ti serve un equipaggio ed una nave per salvare Elaine Marley!
echo
echo Una nave costa molto, per questo dovrai chiedere una nota di credito al negoziante del villaggio, il quale però, rifiuterà il prestito.
echo ...se solo riuscissi ad aprire la cassaforte del negoziante... 
echo 
echo
echo Dovrai aprire la cassaforte in assenza del vecchietto, sopri il codice criptato, cerca nell\'archivio del negozio con il comando "ls -l", facendo attenzione ad ore e minuti!
echo
echo Quando avrai scoperto il codice rinomina il file banana con il comando "mv banana <codice>" ed esegui "source azione.sh" 
rmdir uomo

if [ ! -e ../../negozio/banana ]; then
touch ../../negozio/banana
fi

cd ../../negozio

touch -t 201108230404 $mayalinuxdir/negozio/archivio/backup
touch -t 201108230202 $mayalinuxdir/negozio/archivio/governatore
touch -t 201108230103 $mayalinuxdir/negozio/archivio/lampone
touch -t 201108230301 $mayalinuxdir/negozio/archivio/nave
touch -t 201108230502 $mayalinuxdir/negozio/archivio/Fester
touch -t 201108230605 $mayalinuxdir/negozio/archivio/Jolly_Roger
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
