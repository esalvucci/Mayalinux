#!/bin/bash

export monkey_island_dir=`pwd`
alias lab="cd '$monkey_island_dir'/.settings && source trucco_labirinto.sh"

cat .settings/titolo.txt
echo Premi Invio...
read

clear
cat .settings/autor.txt
echo Premi Invio...
read

clear
cat .settings/regole.txt
echo Premi Invio...
read

clear
cat .settings/leggimi.txt
echo Premi Invio per entrare nella boscaglia...
#play .settings/Monkey_Island_Theme.mp3 &> /dev/null 

#mpg123 .settings/Monkey_Island_Theme.mp3 >& /dev/null &  

read


cd $monkey_island_dir/labirinto
#play ../.settings/Monkey_Island_Theme.mp3 -q >& /dev/null &

