#!/bin/bash

clear
echo ""
echo ""
echo " Installing Pip. "
wget https://bootstrap.pypa.io/get-pip.py &&
sudo -H python get-pip.py &&
rm -f get-pip.py &&
echo ""
echo ""
echo " Pip Installed. " &&
exit
