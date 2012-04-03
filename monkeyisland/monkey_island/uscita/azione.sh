#!/bin/bash

dev1="`file neo_fs | grep 'filesystem data'`"
dev2="`file dozer_fs | grep 'filesystem data'`"
dev4="`file trinity_fs | grep 'filesystem data'`"
dev3="`file oracolo_fs | grep 'filesystem data'`"


ko()
{
	cd ../uscita/

	echo
	echo non hai formattato il device corretto
	echo riprova
	echo

}


ok()
{
	echo
	echo Cancellazione in corso...
	echo
	sleep 4
	clear
	echo Cancellazione drive di connessione compleatata
	echo 
	echo Bene, ora sei pulito. Puoi proseguire e dirigerti all\'uscita.
	echo 
	echo Per\ò c\'\è un problema. Hai appena avuto un deja vu.
	echo Ti guardi intorno e scopri che gli Agenti hanno sigillato il forte.
	echo Sei costretto allora ad addentrarti nello secantinato del quartier 
	echo generale dove c\'\è una vecchia uscita che fa al caso vostro.
	echo
	sleep 5
	echo
	cd ./scantinato
	echo "... ora sei nello scantinato del quartier generale!"

}

 if [[ "${dev1}" == "" && "${dev2}" == "" && "${dev4}" != "" && "${dev3}" == "" ]] ; then

	ok
else 	
	ko
fi
