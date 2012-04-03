#!/bin/bash

errore()
{
echo
echo Hai sbagliato, aspetta finchè non risquillano i telefoni...
echo
sleep 10
echo premi Invio
read
if [ ! -e ./elera ]; then
	mkdir -p ./elera
fi

if [ ! -e ./medom ]; then
	mkdir -p ./medom
fi

if [ ! -e ./pheno ]; then
	mkdir -p ./pheno
fi

if [ ! -e ./querty ]; then
	mkdir -p ./querty
fi

if [ ! -e ./scsi ]; then
	mkdir -p ./scsi
fi

}

bravo()
{
	echo
	echo Hai indovinato, bravo!
	echo Infatti ELERA e l\'anagramma di REALE.
	echo
	echo
	echo Accosti il telefono all\'orecchio,
	echo ancora pochi attimi e uscirai da Matrix
	echo
	sleep 3
	echo
	echo   ... Sei uscito da Matrix. Finalmente sei di nuovo nel 
	echo   MONDO REALE ...
	echo
	source ../../fine/azione.sh
}

if [ ! -e ./elera ]; then errore
else
	if [ ! -d ./medom ] || [ ! -d ./pheno ] || [ ! -d ./querty ] || [ ! -e ./scsi ]; then
	bravo
	else
	echo ne deve rimanere solo 1...
	fi
fi
