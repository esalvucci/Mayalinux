#!/bin/bash

export monkey_island_dir=`pwd`

# per la versione 2013 è stato ripristinato il trucco che porta alla fine del labirinto
# digitare l'alias "lab", la password richiesta è "lab"

alias lab="cd '$monkey_island_dir'/.settings && source trucco_labirinto.sh"

# inizia il lancio del gioco, con titolo, autori e spiegazione
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
read

#
#play .settings/Monkey_Island_Theme.mp3 &> /dev/null 
#
#mpg123 .settings/Monkey_Island_Theme.mp3 >& /dev/null &  
#
#play ../.settings/Monkey_Island_Theme.mp3 -q >& /dev/null &
#

# Nel 2012 abbiamo provato ad usare il comando play/mpg123 per fare sentire la musica di Monkey Island ma c'era il problema dell'output alla fine della canzone (e non all'inizio)


# chroot per evitare che i ragazzi con "cd .." escano dal gioco
#sudo mount -o bind /dev /tmp/dev
#sudo mount -t proc none /tmp/proc


# se esiste un file .auto.sh nella directory lo esegue
#trap 'test -f ./.nocd && cd -' DEBUG
export PROMPT_COMMAND="test -f ./.auto.sh && source ./.auto.sh"
cd $monkey_island_dir/labirinto

