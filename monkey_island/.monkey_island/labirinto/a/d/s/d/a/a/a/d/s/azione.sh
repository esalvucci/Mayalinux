#!/bin/bash

if [ -e $monkey_island_dir/nave/seppia.sh ]; then rm $monkey_island_dir/nave/seppia.sh > /dev/null 
fi

if [ -e $monkey_island_dir/nave/diversiv.sh ]; then rm $monkey_island_dir/nave/diversiv.sh > /dev/null 
fi

if [ -e $monkey_island_dir/nave/sabotagg.sh ]; then rm $monkey_island_dir/nave/sabotagg.sh > /dev/null
fi 

if [ -e $monkey_island_dir/nave/suicida.sh ]; then rm $monkey_island_dir/nave/suicida.sh > /dev/null
fi

if [ -e $monkey_island_dir/nave/furtiva.sh ]; then rm $monkey_island_dir/nave/furtiva.sh > /dev/null
fi

cp $monkey_island_dir/nave/.altre/seppia.sh $monkey_island_dir/nave/ #> /dev/null
cp $monkey_island_dir/nave/.altre/diversiv.sh  $monkey_island_dir/nave/ #> /dev/null
cp $monkey_island_dir/nave/.altre/sabotagg.sh $monkey_island_dir/nave/ #> /dev/null
cp $monkey_island_dir/nave/.altre/suicida.sh $monkey_island_dir/nave/ #> /dev/null
cp $monkey_island_dir/nave/.altre/furtiva.sh    $monkey_island_dir/nave/ #> /dev/null
chmod +x $monkey_island_dir/nave*
clear
cat $monkey_island_dir/.settings/labir.txt

cd $monkey_island_dir/nave
