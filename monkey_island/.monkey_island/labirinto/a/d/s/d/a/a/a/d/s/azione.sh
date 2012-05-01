#!/bin/bash

if [ -e $monkey_island_dir/equipaggiamento/equipaggiamento/pollo ]; then rm $monkey_island_dir/equipaggiamento/equipaggiamento/pollo > /dev/null 
fi

if [ -e $monkey_island_dir/equipaggiamento/equipaggiamento/vanga ]; then rm $monkey_island_dir/equipaggiamento/equipaggiamento/vanga > /dev/null 
fi

if [ -e $monkey_island_dir/equipaggiamento/equipaggiamento/idolo_del_governatore ]; then rm $monkey_island_dir/equipaggiamento/equipaggiamento/idolo_del_governatore > /dev/null
fi 

if [ -e $monkey_island_dir/equipaggiamento/equipaggiamento/boccale_di_grog ]; then rm $monkey_island_dir/equipaggiamento/equipaggiamento/boccale_di_grog > /dev/null
fi

if [ -e $monkey_island_dir/equipaggiamento/equipaggiamento/mentine_per_alito ]; then rm $monkey_island_dir/equipaggiamento/equipaggiamento/mentine_per_alito > /dev/null
fi

clear
cat $monkey_island_dir/.settings/labir.txt

cd $monkey_island_dir/equipaggiamento
