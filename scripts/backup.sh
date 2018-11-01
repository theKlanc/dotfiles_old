#!/bin/sh
if [[ $# -ne "1" ]]
then
	echo "Usage: ./backup.sh backupFile.7z"
	exit
fi

sudo rm -rf /tmp/klanc_backup
sudo rm -f /tmp/klancBackup.7z

mkdir /tmp/klanc_backup
sudo pacman -Q > /tmp/klanc_backup/pacList.txt
sudo tree -ax / > /tmp/klanc_backup/fstree.txt
sudo cp /etc/fstab /tmp/klanc_backup/fstab
sudo cp -r /home/klanc/.dotfiles /tmp/klanc_backup/dotfiles
sudo 7z a -t7z /tmp/klancBackup.7z /tmp/klanc_backup/
sudo rm -rf /tmp/klanc_backup
sudo mv /tmp/klancBackup.7z $1
