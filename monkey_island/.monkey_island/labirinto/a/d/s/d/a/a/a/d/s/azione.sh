#!/bin/bash

clear
cat $CURRENT_DIR/.settings/$GAME/labir.txt

mkdir -p $CURRENT_DIR/equipaggiamento/equipaggiamento

cp $CURRENT_DIR/.settings/$GAME/equipaggiamento/* $CURRENT_DIR/equipaggiamento/
cd $CURRENT_DIR/equipaggiamento
