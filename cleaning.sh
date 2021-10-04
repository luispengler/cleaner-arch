#! /bin/bash

echo "The next command will remove unused packages (AKA Orphan packages)"

sudo pacman -Qtdq && sudo pacman -Rns $(pacman -Qtdq);

while true; do
    read -p "Do you wanna erase everthing from your cache directory?	" yn
        case $yn in
        [Yy]* ) sudo du -sh ~/.cache/ && rm -rf ~/.cache/* && clear;
echo "Now everything is clean again."; break;;
        [Nn]* ) exit;;
        * ) echo "Yes or no only.";;
    esac
done
