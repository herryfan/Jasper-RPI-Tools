#!/bin/bash

echo "Enabling the Home-Assistant.io Service"
sudo systemctl enable home-assistant.service &&
echo "Enabled, reboot for it to take affect"
exit

