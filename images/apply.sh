#!/bin/sh
inputFile=
if [ -e ./input.png ]
then
	inputFile=./input.png
else
	if [ -e ./input.jpg ]
	then    
        	inputFile=./input.jpg
	else
		exit 1
	fi
fi
convert $inputFile ./wallpaper.png
convert $inputFile -blur 0x10 ./i3lock.png
convert ./i3lock.png tempBlur.jpg
dd if=./tempBlur.jpg of=./greeter.jpg
rm tempBlur.jpg
