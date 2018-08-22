#!/bin/bash

if [ $GAME == "matrix" ] ; then
	touch -t $(date +%Y%m%d)0604 ~/.mayalinux/$GAME/livello_4/archivio/agente
	touch -t $(date +%Y%m%d)0402 ~/.mayalinux/$GAME/livello_4/archivio/eletto
	touch -t $(date +%Y%m%d)0703 ~/.mayalinux/$GAME/livello_4/archivio/matrice
	touch -t $(date +%Y%m%d)0503 ~/.mayalinux/$GAME/livello_4/archivio/oracolo
	touch -t $(date +%Y%m%d)0105 ~/.mayalinux/$GAME/livello_4/archivio/seppia
	touch -t $(date +%Y%m%d)0204 ~/.mayalinux/$GAME/livello_4/archivio/sorgente
	touch -t $(date +%Y%m%d)0001 ~/.mayalinux/$GAME/livello_4/archivio/vettore
	touch -t $(date +%Y%m%d)0302 ~/.mayalinux/$GAME/livello_4/archivio/zion	
fi

if [ $GAME == "monkey_island" ] ; then
	touch -t $(date +%Y%m%d)0404 ~/.mayalinux/$GAME/livello_4/archivio/backup
	touch -t $(date +%Y%m%d)0202 ~/.mayalinux/$GAME/livello_4/archivio/governatore
	touch -t $(date +%Y%m%d)0103 ~/.mayalinux/$GAME/livello_4/archivio/lampone
	touch -t $(date +%Y%m%d)0301 ~/.mayalinux/$GAME/livello_4/archivio/nave
	touch -t $(date +%Y%m%d)0502 ~/.mayalinux/$GAME/livello_4/archivio/Fester
	touch -t $(date +%Y%m%d)0605 ~/.mayalinux/$GAME/livello_4/archivio/Jolly_Roge
fi

if [ $GAME == "star_wars" ] ; then
	touch -t $(date +%Y%m%d)0404 ~/.mayalinux/$GAME/livello_4/archivio/imperatore
	touch -t $(date +%Y%m%d)0202 ~/.mayalinux/$GAME/livello_4/archivio/jedi
	touch -t $(date +%Y%m%d)0101 ~/.mayalinux/$GAME/livello_4/archivio/forza
	touch -t $(date +%Y%m%d)0306 ~/.mayalinux/$GAME/livello_4/archivio/obiwankenobi
	touch -t $(date +%Y%m%d)0502 ~/.mayalinux/$GAME/livello_4/archivio/droide
fi
