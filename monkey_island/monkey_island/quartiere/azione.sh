#!/bin/bash

vabene()
{
echo
echo Sei salvo !
echo Grazie al cellulare l\'operatore riesce a guidarti in un nascondiglio sicuro,
echo gli Agenti non ti hanno preso.
echo
echo Hai eluso la sorveglianza all\'ingresso ed ora ti puoi addentrare nel forte 
echo alla ricerca della cella dove viene tenuto l\'equipaggio della Vigilant.
echo Buona fortuna !
echo
cd ./mastro
}

del()
{
cd ../matrice
rm -r ../matrice/equipaggiamento/
mkdir ../matrice/equipaggiamento
}

esplosivo()
{
echo
echo Non hai il tempo per piazzare l\'esplosivo
echo
echo Non avendo altre possibilita sei costretto alla fuga.
echo Gli Agenti ti inseguono fino a che non riesci a trovare
echo una vecchia uscita da Matrix e portarti cosi in salvo.
echo
echo Devi rientrare in Matrix.
echo
del
}

giubbotto()
{
echo
echo Il giubbotto anti-proiettili ti ha salvato la vita, ma non ha
echo sconfitto gli Agenti
echo
echo Non avendo altre possibilita sei costretto alla fuga.
echo Gli Agenti ti inseguono fino a che non riesci a trovare
echo una vecchia uscita da Matrix e portarti cosi in salvo.
echo
echo Devi rientrare in Matrix.
echo
del
}

pistola()
{
echo
echo Scarichi l\'intero caricatore della tua pistola sugli agenti
echo ma non serve a nulla, sono troppo veloci, schivano tutte le pallottole
echo
echo Non avendo altre possibilita sei costretto alla fuga.
echo Gli Agenti ti inseguono fino a che non riesci a trovare
echo una vecchia uscita da Matrix e portarti cosi in salvo.
echo
echo Devi rientrare in Matrix.
echo
del
}

moto()
{
echo
echo La moto non si rivela molto utile, se non per fuggire
echo
echo Non avendo altre possibilita sei costretto alla fuga.
echo Gli Agenti ti inseguono fino a che non riesci a trovare
echo una vecchia uscita da Matrix e portarti cosi in salvo.
echo
echo Devi rientrare in Matrix.
echo
del
}

equi()
{

if [ -e ../matrice/equipaggiamento/pistola ] ; then
pistola
fi

if [ -e ../matrice/equipaggiamento/moto ] ; then
moto
fi

if [ -e ../matrice/equipaggiamento/esplosivo ] ; then
esplosivo
fi

if [ -e ../matrice/equipaggiamento/giubbotto ] ; then
giubbotto
fi

if [ -e ../matrice/equipaggiamento/cellulare ] ; then
vabene
fi

}

if [ -e ../matrice/equipaggiamento/pistola ]|| [ -e ../matrice/equipaggiamento/moto ] || [ -e ../matrice/equipaggiamento/cellulare ] || [ -e ../matrice/equipaggiamento/esplosivo ] || [ -e ../matrice/equipaggiamento/giubbotto ]; then 
	
equi

else

echo
	echo Attenzione, non ti sei equipaggiato!
	echo Torna a scegliere l\'equipaggiamento più adatto...
	rm -r ../matrice/equipaggiamento/*
	cd ../matrice

fi

