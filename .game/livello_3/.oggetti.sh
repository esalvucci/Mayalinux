#!/bin/bash

if [ $GAME == "matrix" ] ; then
	touch -t $(date +%Y%m%d)0604 $CURRENT_DIR/livello_4/archivio/agente
	touch -t $(date +%Y%m%d)0402 $CURRENT_DIR/livello_4/archivio/eletto
	touch -t $(date +%Y%m%d)0703 $CURRENT_DIR/livello_4/archivio/matrice
	touch -t $(date +%Y%m%d)0503 $CURRENT_DIR/livello_4/archivio/oracolo
	touch -t $(date +%Y%m%d)0105 $CURRENT_DIR/livello_4/archivio/seppia
	touch -t $(date +%Y%m%d)0204 $CURRENT_DIR/livello_4/archivio/sorgente
	touch -t $(date +%Y%m%d)0001 $CURRENT_DIR/livello_4/archivio/vettore
	touch -t $(date +%Y%m%d)0302 $CURRENT_DIR/livello_4/archivio/zion	
fi

if [ $GAME == "monkey_island" ] ; then
	touch -t $(date +%Y%m%d)0404 $CURRENT_DIR/livello_4/archivio/backup
	touch -t $(date +%Y%m%d)0202 $CURRENT_DIR/livello_4/archivio/governatore
	touch -t $(date +%Y%m%d)0103 $CURRENT_DIR/livello_4/archivio/lampone
	touch -t $(date +%Y%m%d)0301 $CURRENT_DIR/livello_4/archivio/nave
	touch -t $(date +%Y%m%d)0502 $CURRENT_DIR/livello_4/archivio/Fester
	touch -t $(date +%Y%m%d)0605 $CURRENT_DIR/livello_4/archivio/Jolly_Roge
fi

if [ $GAME == "star_wars" ] ; then
	touch -t $(date +%Y%m%d)0404 $CURRENT_DIR/livello_4/archivio/imperatore
	touch -t $(date +%Y%m%d)0202 $CURRENT_DIR/livello_4/archivio/jedi
	touch -t $(date +%Y%m%d)0101 $CURRENT_DIR/livello_4/archivio/forza
	touch -t $(date +%Y%m%d)0306 $CURRENT_DIR/livello_4/archivio/obiwankenobi
	touch -t $(date +%Y%m%d)0502 $CURRENT_DIR/livello_4/archivio/droide
fi
