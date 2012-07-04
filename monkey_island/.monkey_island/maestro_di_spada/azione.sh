#!/bin/bash

vabene()
{
echo
echo Ottimo!
echo Grazie al pollo di gomma riesci a vincere, a suon di insulti, il duello contro Carla, il Maestro di Spada.
echo 
echo
echo Sei pronto per la seconda prova: entrare nella casa del governatore e saccheggiarla!
echo Buona fortuna !
echo
cd ../maestro_di_spada/governatore
}

del()
{
cd ../equipaggiamento
rm -r ../equipaggiamento/equipaggiamento/
mkdir ../equipaggiamento/equipaggiamento
}

vanga()
{
echo
echo La vanga è troppo pesante per maneggiarla con agilità
echo
echo In ogni duello vieni sconfitto dai pirati
echo
echo
echo Scegli un equipaggiamento migliore!
echo
del
}

mentine_per_alito()
{
echo
echo I pirati hanno veramente un alito terribile!
echo 
echo
echo Con le mentine però non riesci a vincere alcun duello con i pirati!
echo non è esattamente l\'arma che ti serve...
echo Scegli un equipaggiamento migliore!
echo
echo
del
}

idolo_del_governatore()
{
echo
echo L\'idolo è troppo pesante e troppo prezioso per essere utilizzato
echo 'come arma in un combattimento'
echo
echo I pirati sono troppo più agili di te con le loro spade.
echo Scegli un equipaggiamento migliore!
echo
echo
del
}

boccale_di_grog()
{
echo
echo Con un bicchiere di Grog i pirati diventano molto pi\ù abili
echo con la spada, ma tu non sei ancora abituato a quel sapore
echo disgustoso!
echo 
echo Per questo non riesci a vincere neanche un duello.
echo
echo Scegli un equipaggiamento migliore!
echo
del
}

equi()
{

if [ -e ../equipaggiamento/equipaggiamento/vanga ] ; then
vanga
fi

if [ -e ../equipaggiamento/equipaggiamento/boccale_di_grog ] ; then
boccale_di_grog
fi

if [ -e ../equipaggiamento/equipaggiamento/mentine_per_alito ] ; then
mentine_per_alito
fi

if [ -e ../equipaggiamento/equipaggiamento/idolo_del_governatore ] ; then
idolo_del_governatore
fi

if [ -e ../equipaggiamento/equipaggiamento/pollo_di_gomma ] ; then
vabene
fi

}

if [ -e ../equipaggiamento/equipaggiamento/idolo_del_governatore ]|| [ -e ../equipaggiamento/equipaggiamento/vanga ] || [ -e ../equipaggiamento/equipaggiamento/mentine_per_alito ] || [ -e ../equipaggiamento/equipaggiamento/boccale_di_grog ] || [ -e ../equipaggiamento/equipaggiamento/pollo_di_gomma ]; then 
	
equi

else

echo
	echo Attenzione, non ti sei equipaggiato!
	echo Torna a scegliere l\'oggetto più adatto...
	rm -r ../equipaggiamento/equipaggiamento/*
	cd ../equipaggiamento

fi

