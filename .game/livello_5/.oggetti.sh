#!/bin/bash

if [ $GAME == "matrix" ] ; then
	FILE_1="dozer"
	FILE_2="neo"
	FILE_3="oracolo"
	FILE_4="trinity"
fi

if [ $GAME == "monkey_island" ] ; then
	FILE_1="barbarossa"
	FILE_2="capitan_uncino"
	FILE_3="jack_sparrow"
	FILE_4="macomb_seepgood"
fi

touch $FILE_1 $FILE_2 $FILE_3 $FILE_4
