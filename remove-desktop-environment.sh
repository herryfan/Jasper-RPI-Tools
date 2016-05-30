#!/bin/bash

#	remove-desktop-environment.sh
#	By: Matthew Curry
#	Date: Unknown
#	Description: Removes full stock desktop envinronment from  base RPI image.
#	Note: Some packages can be left behind as dependencies.  Feel free to adjust  or submit PR.
#	      This is an early version of this script; I am going to be adjusting it to remove everything possible desktop-related.
#

echo "  Removing Desktop Related Packages"
sudo apt-get -y remove --auto-remove --purge libx11-.* &&
echo ""

echo " Installing deborphan"
sudo apt-get -y install deborphan &&
echo " Deborphan installed"
echo ""

echo " Removing the following packages:"
echo ""
sudo deborphan -sz
echo ""

echo " If you would like to cancel, there is a delay following this message:"
sleep 4
echo " Removing Orphaned Packages..."
echo ""
sudo apt-get -y remove --purge $(deborphan) &&
echo ""
echo " Orphaned Packages Removed"
echo ""

echo " Peforming Autoremove"
sudo apt-get -y autoremove &&
echo ""
echo " Auto Remove Complete"
echo " Reboot Suggested"


# Note:
# sudo apt-get purge desktop-base lightdm lxappearance lxde-common lxde-icon-theme lxinput lxpanel lxpolkit lxrandr lxsession-edit lxshortcut lxtask lxterminal obconf openbox raspberrypi-artwork xarchiver xinit xserver-xorg xserver-xorg-video-fbdev

exit
