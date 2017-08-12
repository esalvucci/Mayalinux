#!/bin/bash


if [ $GAME == "matrix" ] ; then
	OGGETTO_1="pistola"
	OGGETTO_2="esplosivo"
	OGGETTO_3="giubbotto"
	OGGETTO_4="moto"
	OGGETTO_5="cellulare"
fi

if [ $GAME == "monkey_island" ] ; then
	OGGETTO_1="mentine_per_l_alito"
	OGGETTO_2="boccale_di_grog"
	OGGETTO_3="idolo_del_governatore"
	OGGETTO_4="vanga"
	OGGETTO_5="pollo_di_gomma"
fi

if [ $GAME == "star_wars" ] ; then
	OGGETTO_1="sguscio"
	OGGETTO_2="blaster_e11"
	OGGETTO_3="x_wing"
	OGGETTO_4="droide_protocollare"
	OGGETTO_5="spada_laser"
fi
