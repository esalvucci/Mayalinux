#!/bin/bash

clear
cat $monkey_island_dir/.settings/labir.txt

if [ !-d $monkey_island_dir/equipaggiamento/equipaggiamento ]; then
mkdir $monkey_island_dir/equipaggiamento/equipaggiamento
fi

cd $monkey_island_dir/equipaggiamento
