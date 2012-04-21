#!/bin/bash

export HOME='/home/'$USER'/Documenti/mayalinux/monkey_island/monkey_island/labirinto/'
export PS1='\e[0;32m \[\e]0;Monkey Island\a\]Monkey Island $ '
#export PS1="\e[0;32m[\u@\h \W]\$ \e[m "
# On_Black='\e[40m' 

# colore corretto in matrix:
# export PS1='\e[0;32m \[\e]0;Matrix\a\]Matrix $ '

rm -rf ./monkey_island

cp -r ./.monkey_island/ ./monkey_island/
cd ./monkey_island/
source azione.sh
