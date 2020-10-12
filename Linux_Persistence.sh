#Format USB as FAT32 
#Select "Live Persistence"
#Open terminal
#Type the following commands
sudo su
fdisk -l
mkdir -p /mnt/rename_usb_persistence
mount /dev/sdb2 /mnt/rename_usb_persistence
echo "/ union" > /mnt/rename_usb_persistence/persistence.conf
umount /dev/sdb2 && reboot
