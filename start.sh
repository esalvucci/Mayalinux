#!/bin/bash

echo "Quale avventura vuoi iniziare?"
echo "        Matrix        /        Monkey Island        "
echo
echo " 1 - Matrix"
echo " 2 - Monkey Island"
echo
read risposta
case $risposta in
   1 )  cd matrix
	source matrix.sh
	;;
   2 )  cd monkeyisland
	source start.sh
	;;

   * ) echo "digita 1 o 2"
esac
