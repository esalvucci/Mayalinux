#!/bin/bash

# non ho messo il controllo: "attenzione, hai fatto il furbo, vieni rispedito nelle fogne

if [ -e monkey ]; then

	echo GRANDIOSO!!!
	echo Hai trovato la giusta decodifica!
	echo
	echo Corri a comprare una nave, poi sarai pronto per partire con il tuo equipaggio verso Monkey Island!
	echo
	echo
	sleep 3
	echo
	echo
	echo   ... sei riuscito a comprare una nave dal venditore Stan, ora tu, Carla, Otis e Murray
	echo   siete pronti per salpare, destinazione: M o n k e y   I s l a n d!!!
	echo
	
	rm monkey
	touch banana
	#chmod +x ../uscita/*
	dd if=/dev/zero of=../uscita/neo_fs bs=2M count=2 &> /dev/null
	dd if=/dev/zero of=../uscita/dozer_fs bs=2M count=2 &> /dev/null
	dd if=/dev/zero of=../uscita/trinity_fs bs=2M count=2 &> /dev/null	
	dd if=/dev/zero of=../uscita/oracolo_fs bs=2M count=2 &> /dev/null

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

