#!/bin/bash

# permetto di eseguire tutti i file, compresi quelli nelle cartelle e sottocartelle
chmod -Rf +x * 

# Le versioni di Mayalinux sono 2: Matrix o Monkey Island, scegliamo a quale vogliamo giocare
echo "Quale avventura vuoi iniziare?"
echo "        Matrix        /        Monkey Island        "
echo
echo " 1 - Matrix"
echo " 2 - Monkey Island"
echo
echo Digita 1 o 2 e poi Invio
echo
read risposta
case $risposta in
   1 )  cd matrix
	source matrix.sh
	;;
   2 )  cd monkey_island
	source start.sh
	;;

   * ) echo "digita 1 o 2"
esac
