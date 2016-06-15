#!/bin/bash



sudo ./remove-desktop-environment.sh &&
sudo ./rpi-updater.sh &&
sudo ./post-install.sh &&
sudo reboot
