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
echo SI, il sabotaggio poteva funzionare.
echo Per\ò, neutralizzata la seppia sabotata, sono partite alla ricerca dei responsabili.
echo Sei stato costretto a rintanarti nuovamente nella rete fognaria
echo da dove sei partito.
echo
#set livello=1
cd ../fogne
}

if [ -e seppia.sh ]|| [ -e diversiv.sh ] || [ -e suicida.sh ] || [ -e furtiva.sh ]; then err
else bravo
fi

