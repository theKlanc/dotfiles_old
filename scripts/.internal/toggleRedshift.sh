#!/bin/sh
resultat=`pgrep redshift-gtk | wc -l`
if [[ "$resultat" -gt 0 ]]
then
	pkill redshift-gtk
else
	exec redshift-gtk &
fi