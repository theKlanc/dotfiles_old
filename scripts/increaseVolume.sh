#!/bin/sh
if mkdir /tmp/increaseVolume.lck/
then
	if [ `pamixer --get-volume` -lt "96" ]; then
		pactl set-sink-volume 0 +5%
	else 
		if [ `pamixer --get-volume` -lt "101" ]; then
			pactl set-sink-volume 0 100%
		fi
	fi
	rmdir /tmp/increaseVolume.lck/
fi
