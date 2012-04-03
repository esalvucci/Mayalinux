#!/bin/bash

err()
{
echo
echo Devi cancellare 4 programmi e tenerne solamente uno!
echo
}

bravo()
{
cat ../.settings/altruism.txt
echo premi Invio
read
cd ../matrice

}

if [ -e suicida.sh ]|| [ -e diversiv.sh ] || [ -e sabotagg.sh ] || [ -e furtiva.sh ]; then err
else bravo
fi

