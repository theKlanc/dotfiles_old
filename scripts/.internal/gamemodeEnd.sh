#!/bin/sh
notify-send "Gamemode End"
DISPLAY=":0" compton --config /home/klanc/.compton.conf -b &
DISPLAY=":0" redshift-gtk &