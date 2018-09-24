#!/bin/sh
export PATH=/home/klanc/.scripts/:$PATH
cat /home/klanc/.dotfiles/configs/i3.conf > /home/klanc/.config/i3/config
cat /home/klanc/.dotfiles/sensitive/i3extra.conf >> /home/klanc/.config/i3/config
