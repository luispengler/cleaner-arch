#! /bin/bash

echo "the next command will delete your package cache, but only the uninstalled stuff you forgot to put in the trash can"

sudo pacman -Sc;

echo "you don't need this every time, and you still hate cleaning up!!!"

sudo pacman -Qtdq && sudo pacman -Rns $(pacman -Qtdq)

echo "cleaning up your cache, you pork"

sudo du -sh ~/.cache/ && rm -rf ~/.cache/* && clear

echo "Your room is finally clean, bitch. UHAHAHAHAHAHAHAHAHAHAHA"
echo "My name is Luis, thanks for running this scprit ;)"

