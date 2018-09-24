#!/bin/sh
export PATH=$HOME/.scripts/:$PATH
cat $HOME/.dotfiles/configs/i3.conf > $HOME/.config/i3/config
cat $HOME/.dotfiles/sensitive/i3extra.conf >> $HOME/.config/i3/config
