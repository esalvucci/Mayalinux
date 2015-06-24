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
echo SI, un diversivo poteva funzionare.
echo Per\ò le seppie si sono divise e ti hanno raggiunto.
echo Sei stato costretto a rintanarti nuovamente nella rete fognaria
echo da dove sei partito.
echo
#set livello=1
cd ../fogne
}

if [ -e seppia.sh ] || [ -e sabotagg.sh ] || [ -e furtiva.sh ] || [ -e suicida.sh ];
then err
else bravo
fi
