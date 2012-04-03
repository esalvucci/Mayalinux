#!/bin/bash

err()
{
echo
echo Devi cancellare 4 programmi e tenerne solamente uno!
echo
}

bravo()
{
echo
echo SI, la sonda suicida poteva funzionare.
echo Pero dopo aver distrutto la sonda le seppie hanno continuato a cercare altri intrusi.
echo Sei stato costretto a rintanarti nuovamente nella rete fognaria
echo da dove sei partito.
echo
#set livello=1
cd ../fogne
}

if [ -e seppia.sh ]|| [ -e diversiv.sh ] || [ -e sabotagg.sh ] || [ -e furtiva.sh ]; then err
else bravo
fi

