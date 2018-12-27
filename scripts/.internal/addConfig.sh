#!/bin/sh
mv $1 /home/klanc/.dotfiles/configs
ln -s /home/klanc/.dotfiles/configs/$1 `pwd`/$1
