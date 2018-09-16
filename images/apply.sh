#!/bin/sh
if [ "$#" -ne 1 ]; then
	echo "Usage: ./apply.sh inputFilename (png or jpg format)"
	exit
fi
inputFile=$1
convert $inputFile ./wallpaper.png
convert $inputFile -blur 0x10 ./i3lock.png
convert ./i3lock.png tempBlur.jpg
dd if=./tempBlur.jpg of=./greeter.jpg
rm tempBlur.jpg
betterlockscreen -u greeter.jpg
feh --bg-scale --no-xinerama /usr/share/pixmaps/wallpaper.png
