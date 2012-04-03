#!/bin/bash

export HOME='/home/'$USER'/Documenti/matrix/'
export PS1='\e[0;32m \[\e]0;Matrix\a\]Matrix $ '
#export PS1="\e[0;32m[\u@\h \W]\$ \e[m "
rm -rf ./matrix

cp -r ./.matrix/ ./matrix/
cd ./matrix/
source azione.sh
