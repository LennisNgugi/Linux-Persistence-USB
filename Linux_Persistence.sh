#!/bin/bash 
echo "Installing Persistence";
sudo su;
fdisk -l;
mkdir -p /mnt/rename_usb_persistence;
mount /dev/sdb2 /mnt/rename_usb_persistence;
echo "/ union" > /mnt/rename_usb_persistence/persistence.conf;
umount /dev/sdb2 && reboot;
echo "Install completed";
echo "Run Linux_Persistence_After_Sudo.sh next";
