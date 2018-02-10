#!/bin/bash

clear

echo " This will install Home assistant in a Virtual Environment. This install will take 1-2 hours to complete."
curl -O https://raw.githubusercontent.com/home-assistant/fabric-home-assistant/master/hass_rpi_installer.sh && sudo chown pi:pi hass_rpi_installer.sh && bash hass_rpi_installer.sh &&



