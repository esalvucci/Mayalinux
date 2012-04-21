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
echo SI, la sonda e salva
echo Pero dovevi salvare la tua nave, le seppie ti hanno trovato ed inseguito.
echo Sei stato costretto a rintanarti nuovamente nella rete fognaria
echo da dove sei partito.
echo
#set livello=1
cd ../fogne
}

if [ -e seppia.sh ] || [ -e sabotagg.sh ] || [ -e diversiv.sh ] || [ -e suicida.sh ]; then err
else bravo
fi

