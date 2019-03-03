#!/bin/sh
u="$USER"
h="$HOME"
if [[ $# -ne "1" ]]
then
	echo "Usage: ./backup.sh backupFile.7z"
	exit
fi

sudo rm -rf /tmp/${u}_backup
sudo rm -f /tmp/${u}Backup.7z

mkdir /tmp/${u}_backup
sudo pacman -Q > /tmp/${u}_backup/pacList.txt
sudo tree -ax / > /tmp/${u}_backup/fstree.txt
sudo cp /etc/fstab /tmp/${u}_backup/fstab
sudo cp -r ${h}/.dotfiles /tmp/${u}_backup/dotfiles
sudo 7z a -t7z /tmp/${u}Backup.7z /tmp/${u}_backup/
sudo rm -rf /tmp/${u}_backup
sudo mv /tmp/${u}Backup.7z $1
