#!/bin/bash

# controllo se l'equipaggiamento scelto è giusto con la funzione "equi"

#questa funzione viene utilizzata se l'equipaggiamento scelto è giusto, le altre, se è sbagliato; una per ogni oggetto
vabene()
{
cd ../livello_3
cat ../.settings/$GAME/testi_livello_2/$OGGETTO_5
}

del()
{
cd ../livello_1
rm -r ../livello_1/equipaggiamento/
mkdir ../livello_1/equipaggiamento
}

vanga()
{
cat ../.settings/$GAME/testi_livello_2/$OGGETTO_4
del
}

mentine_per_alito()
{
cat ../.settings/$GAME/testi_livello_2/$OGGETTO_1
del
}

idolo_del_governatore()
{
cat ../.settings/$GAME/testi_livello_2/$OGGETTO_3
del
}

boccale_di_grog()
{
cat ../.settings/$GAME/testi_livello_2/$OGGETTO_2
del
}

equi()
{

if [ -e ../livello_1/equipaggiamento/$OGGETTO_4 ] ; then
vanga
fi

if [ -e ../livello_1/equipaggiamento/$OGGETTO_2 ] ; then
boccale_di_grog
fi

if [ -e ../livello_1/equipaggiamento/$OGGETTO_1 ] ; then
mentine_per_alito
fi

if [ -e ../livello_1/equipaggiamento/$OGGETTO_3 ] ; then
idolo_del_governatore
fi

if [ -e ../livello_1/equipaggiamento/$OGGETTO_5 ] ; then
vabene
fi

}

if [ -e ../livello_1/equipaggiamento/$OGGETTO_1 ]|| [ -e ../livello_1/equipaggiamento/$OGGETTO_2 ] || [ -e ../livello_1/equipaggiamento/$OGGETTO_3 ] || [ -e ../livello_1/equipaggiamento/$OGGETTO_4 ] || [ -e ../livello_1/equipaggiamento/$OGGETTO_5 ]; then 
	
equi

else

echo
	echo Attenzione, non ti sei equipaggiato!
	echo Torna a scegliere l\'oggetto più adatto...
	rm -r ../livello_1/equipaggiamento/*
	cd ../livello_1

fi
