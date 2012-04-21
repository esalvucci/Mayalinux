#!/bin/bash

export HOME='/home/'$USER'/Documenti/mayalinux/monkey_island/monkey_island/labirinto/'
export PS1='\[33[35m\] \[\e]0;Monkey Island\a\]Monkey Island $ '
#export PS1="\e[0;32m[\u@\h \W]\$ \e[m "
# On_Black='\e[40m' 
rm -rf ./monkey_island

cp -r ./.monkey_island/ ./monkey_island/
cd ./monkey_island/
source azione.sh
