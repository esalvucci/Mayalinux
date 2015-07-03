#!/bin/bash

if [ $GAME == "matrix" ] ; then
	FILE_1="morpheus"
	FILE_2="neo"
	FILE_3="oracolo"
	FILE_4="trinity"
fi

if [ $GAME == "monkey_island" ] ; then
	FILE_1="lechuck"
	FILE_2="carla"
	FILE_3="elaine"
	FILE_4="murray"
fi

cp ../.settings/$GAME/testi_livello_5/$FILE_1 .
cp ../.settings/$GAME/testi_livello_5/$FILE_2 .
cp ../.settings/$GAME/testi_livello_5/$FILE_3 .
cp ../.settings/$GAME/testi_livello_5/$FILE_4 .
