#!/bin/sh
if mkdir /mnt/ramdisk/increaseVolume.lock/
then
	if [ `pamixer --get-volume` -lt "96" ]; then
		pactl set-sink-volume 0 +5%
	else 
		if [ `pamixer --get-volume` -lt "101" ]; then
			pactl set-sink-volume 0 100%
		fi
	fi
	rmdir /mnt/ramdisk/increaseVolume.lock/
fi
