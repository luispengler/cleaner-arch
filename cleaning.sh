#! /bin/bash

## running sudo pacman -Syy ##

sudo pacman -Syy;

echo "the next command will delete your package cache, but only the uninstalled stuff"

sudo pacman -Sc;

echo "you don't need this every time"

sudo pacman -Qtdq && sudo pacman -Rns $(pacman -Qtdq)

## cleaning up your cache ##

sudo du -sh ~/.cache/ && rm -rf ~/.cache/* && clear

echo "This is the end, bitch. UHAHAHAHAHAHAHAHAHAHAHA"

