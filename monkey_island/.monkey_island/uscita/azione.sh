#!/bin/bash

dev1="`file anstis_fs | grep 'filesystem data'`"
dev2="`file tucker_fs | grep 'filesystem data'`"
dev3="`file wood_fs | grep 'filesystem data'`"
dev4="`file murray_fs | grep 'filesystem data'`"


#se il fs formattato è quello sbagliato li elimino tutti e li ricreo con il comando dd

ko()
{

	rm *_fs
	
	dd if=/dev/zero of=./anstis_fs bs=2M count=2 &> /dev/null
	dd if=/dev/zero of=./tucker_fs bs=2M count=2 &> /dev/null
	dd if=/dev/zero of=./wood_fs bs=2M count=2 &> /dev/null	
	dd if=/dev/zero of=./murray_fs bs=2M count=2 &> /dev/null

	cd ./

	echo
	echo non purificato il pirata giusto,
	echo riprova!
	echo

}


ok()
{
	echo
	echo ...
	echo
	sleep 3
	clear
	echo 
	echo Bene, hai purificato tutti i pirati tranne uno, quello che ti indicherà dove si trova il governatore.
	echo 
	echo Ora puoi proseguire!
	echo Senti dei rumori dentro la stiva, cosa sarà?
	sleep 3
	echo
	cd ./.stiva
	echo "...sei nella stiva della nave fantasma!"

}

#
#controllo se il filesystem formattato è quello giusto
#

if [[ "${dev1}" == "" && "${dev2}" == "" && "${dev3}" == "" && "${dev4}" != "" ]] ; then

#quello giusto è il numero 3, Murray, unico pirata della lista di Monkey Island

	ok
else 	
	ko
fi
