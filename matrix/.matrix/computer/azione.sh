#!/bin/bash

# non ho messo il controllo: "attenzione, hai fatto il furbo, vieni rispedito nelle fogne

if [ -e vigilant ]; then

	echo GRANDIOSO!!!
	echo Hai trovato la giusta decodifica!
	echo
	echo Corri a liberare i membri dell\'equipaggio delle Vigilant 
	echo prima che riescano ad estorcere le informazioni che volevano ...
	echo
	echo
	sleep 5
	echo
	echo
	echo   ... sei riuscito ad aprire la cella e liberare i tuoi amici,
	echo   ora dovete cercare al piu presto un\'uscita, e scattato l\'allarme!
	echo
		
	rm vigilant
	touch cella
	#chmod +x ../uscita/*
	dd if=/dev/zero of=../uscita/neo_fs bs=2M count=2 &> /dev/null
	dd if=/dev/zero of=../uscita/dozer_fs bs=2M count=2 &> /dev/null
	dd if=/dev/zero of=../uscita/trinity_fs bs=2M count=2 &> /dev/null	
	dd if=/dev/zero of=../uscita/oracolo_fs bs=2M count=2 &> /dev/null

#
#lo script pippo reprime l'output di mkfs.ext 4
#

	alias mkfs.ext4="./.pippo"	

	cd ../uscita
	
	if [ ! -e ../uscita/scantinato/elera ]; then
		mkdir -p ../uscita/scantinato/elera
	fi

	if [ ! -e ../uscita/scantinato/medom ]; then
		mkdir -p ../uscita/scantinato/medom
	fi

	if [ ! -e ../uscita/scantinato/pheno ]; then
		mkdir -p ../uscita/scantinato/pheno
	fi

	if [ ! -e ../uscita/scantinato/querty ]; then
		mkdir -p ../uscita/scantinato/querty
	fi

	if [ ! -e ../uscita/scantinato/scsi ]; then
		mkdir -p ../uscita/scantinato/scsi
	fi
	
else
	echo
	echo Risposta errata! Riprova...
	echo
fi

