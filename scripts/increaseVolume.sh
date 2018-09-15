#!/bin/sh
pactl set-sink-volume 0 +5%
if [ `pamixer --get-volume` -gt "100" ]; then
	pactl set-sink-volume 0 100%
fi
