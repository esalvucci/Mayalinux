#!/bin/bash

# Il path HOME punta a "labirinto" in modo che i ragazzi non tornino nella home con il comando cd
export HOME='/home/'$USER'/Documenti/mayalinux/monkey_island/monkey_island/labirinto/'
# vengono definiti i colori e il titolo del terminale
#export PS1='\e[1;35m \[\e]0;Monkey Island\a\]Monkey Island $ '
export PS1='\e[1;35m \[\e];Monkey Island $ '

# viene rimossa la cartella monkey_island (e poi ricreata) in modo che le modifiche ai file, fatte durante una partita, vengano eliminate prima della partita sucessiva
rm -rf ./monkey_island

cp -r ./.monkey_island/ ./monkey_island/
cd ./monkey_island/
source azione.sh
