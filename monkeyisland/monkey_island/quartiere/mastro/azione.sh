#!/bin/bash

#cat ./leggimi.txt

ok()
{
echo COMPLIMENTI!
echo
echo Hai risposto saggiamente!
echo Ora ti donero la chiave per aprire la cella dei tuoi amici,
echo purtroppo pero non so dove tu possa trovarla.
echo Prova a cercarla nei computer del forte, dovrebbe esserci un archivio dei prigionieri!
echo
rmdir uomo

if [ ! -e ../../computer/cella ]; then
touch ../../computer/cella
fi

cd ../../computer

touch -t 201108230604 $matrixdir/computer/archivio/agente
touch -t 201108230402 $matrixdir/computer/archivio/eletto
touch -t 201108230703 $matrixdir/computer/archivio/matrice
touch -t 201108230503 $matrixdir/computer/archivio/oracolo
touch -t 201108230105 $matrixdir/computer/archivio/seppia
touch -t 201108230204 $matrixdir/computer/archivio/sorgente
touch -t 201108230001 $matrixdir/computer/archivio/vettore
touch -t 201108230302 $matrixdir/computer/archivio/zion
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
