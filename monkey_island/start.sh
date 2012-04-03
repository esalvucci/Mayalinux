#!/bin/bash

export HOME='/home/'$USER'/Documenti/matrix/'
export PS1='\e[0;32m \[\e]0;Matrix\a\]Matrix $ '
#export PS1="\e[0;32m[\u@\h \W]\$ \e[m "
rm -rf ./monkey_island

cp -r ./.monkey_island/ ./monkey_island/
cd ./monkey_island/
source azione.sh
