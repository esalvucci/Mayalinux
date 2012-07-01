#!/bin/bash

export HOME='/home/'$USER'/Documenti/mayalinux/monkey_island/monkey_island/labirinto/'
export PS1='\e[1;35m \[\e]0;Monkey Island\a\]Monkey Island $ '


rm -rf ./monkey_island

cp -r ./.monkey_island/ ./monkey_island/
cd ./monkey_island/
source azione.sh
