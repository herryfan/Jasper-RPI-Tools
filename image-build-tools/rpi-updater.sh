#!/bin/bash
clear
echo"
#	rpi-updater.sh
#	By: Matthew Curry
#	Site: MattCurry.com
#	Description: Updates the System packages
#	             and firmware for RPI2/3
"
clear
echo "This will reboot your RPI, ctrl-c now to cancel"
sleep 2
echo " Starting Full Update "
sleep 1
echo ""

sudo apt-get update &&
sudo apt-get -y upgrade &&
sudo apt-get -y dist-upgrade &&
sudo apt-get -y autoremove &&
sudo rpi-update &&

echo ""

echo "Completed. Rebooting..."
sleep 1
sudo reboot
exit
