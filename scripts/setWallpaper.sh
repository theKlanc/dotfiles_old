#!/bin/sh
if [ "$#" -ne 1 ]; then
	echo "Usage: ./apply.sh inputFilename (png or jpg format)"
	exit
fi
inputFile=$1
convert $inputFile $HOME/.dotfiles/images/wallpaper.png
convert $inputFile -blur 0x10 $HOME/.dotfiles/images/i3lock.png
convert $HOME/.dotfiles/images/i3lock.png $HOME/.dotfiles/images/tempBlur.jpg
dd if=$HOME/.dotfiles/images/tempBlur.jpg of=$HOME/.dotfiles/images/greeter.jpg
rm $HOME/.dotfiles/images/tempBlur.jpg
betterlockscreen -u $HOME/.dotfiles/images/greeter.jpg
feh --bg-scale --no-xinerama /usr/share/pixmaps/wallpaper.png
