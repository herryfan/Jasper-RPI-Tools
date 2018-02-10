#!/bin/bash

#
#	Author     : Matthew Curry
#	Date	   : 08/25/2016
#	Description: Image Prep Script (Jasper)
#	             RUN AT YOUR OWN RISK!
#
#

echo " This will REMOVE your DESKTOP! "
echo " This will UPDATE your RPI!     "
echo " This will REBOOT your RPI!     "
echo " If you do not wish to have this happen"
echo " You have 5 seconds to hit CRTL-C to stop."
sleep 6
sudo ./remove-desktop-environment.sh &&
sudo ./rpi-updater.sh &&
sudo ./post-install.sh &&
echo " Rebooting, CTRL-C to stop.    "
sleep 1
sudo reboot
