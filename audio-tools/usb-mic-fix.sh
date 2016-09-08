#!/bin/bash

#	usb-mic-fix.sh
#	Script:
#	Description:
#	Author: Matthew Curry
#	Date: 08/14/2016


# Load USB Mic Kernel Module First, Setting Device NM to 0 #
clear
echo ""
echo "Backing up /etc/modprobe.d/alsa-base.conf to /etc/modprobe.d/alsa-base.conf.bk"
sudo cp /etc/modprobe.d/alsa-base.conf  /etc/modprobe.d/alsa-base.conf.bk &&
echo "Completed backup of /etc/modprobe.d/alsa-base.conf"
echo ""
sleep 1

echo ""
echo " Updating /etc/modprobe.d/alsa-base.conf "
sudo echo "options snd_usb_audio index=0
options snd_bcm2835 index=1
options snd slots=snd-usb-audio,snd-bcm2835" >> /etc/modprobe.d/alsa-base.conf &&
echo "Completed Update of alsa-base.conf "
echo ""
sleep 1

echo " Backing up /usr/share/alsa/alsa.conf "
sudo cp /usr/share/alsa/alsa.conf /usr/share/alsa/alsa.conf.bk
echo " Completed backup of /usr/share/alsa/alsa.conf "
echo ""
sleep 1

echo " Updating /usr/share/alsa/alsa.conf"
sudo sed -i 's/defaults\.ctl\.card\ 0/defaults\.ctl\.card\ 1/g' /usr/share/alsa/alsa.conf &&
sudo sed -i 's/defaults\.pcm\.card\ 0/defaults\.pcm\.card\ 1/g' /usr/share/alsa/alsa.conf &&
echo " Completed update of /usr/share/alsa/alsa.conf"
echo ""
echo ""
echo " Rebooting in 10seconds. Ctrl-C to stop."
sleep 10
echo "and away we go.."

sudo reboot

