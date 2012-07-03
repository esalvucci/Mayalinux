#!/bin/bash

if [ -e $matrixdir/nave/seppia.sh ]; then rm $matrixdir/nave/seppia.sh > /dev/null 
fi

if [ -e $matrixdir/nave/diversiv.sh ]; then rm $matrixdir/nave/diversiv.sh > /dev/null 
fi

if [ -e $matrixdir/nave/sabotagg.sh ]; then rm $matrixdir/nave/sabotagg.sh > /dev/null
fi 

if [ -e $matrixdir/nave/suicida.sh ]; then rm $matrixdir/nave/suicida.sh > /dev/null
fi

if [ -e $matrixdir/nave/furtiva.sh ]; then rm $matrixdir/nave/furtiva.sh > /dev/null
fi

cp $matrixdir/nave/.altre/seppia.sh $matrixdir/nave/ #> /dev/null
cp $matrixdir/nave/.altre/diversiv.sh  $matrixdir/nave/ #> /dev/null
cp $matrixdir/nave/.altre/sabotagg.sh $matrixdir/nave/ #> /dev/null
cp $matrixdir/nave/.altre/suicida.sh $matrixdir/nave/ #> /dev/null
cp $matrixdir/nave/.altre/furtiva.sh    $matrixdir/nave/ #> /dev/null
chmod +x $matrixdir/nave*
clear
cat $matrixdir/.settings/labir.txt

cd $matrixdir/nave
