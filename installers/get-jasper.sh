#!/bin/bash

# Jasper Repo Installer
# Author: Matthew Curry
# Date: 09/08/2016
#
DATE=$(date +"%Y%m%d%H%M")
DATEREAL=$(date +%m/\%d/\%Y\ %H\:%M)

clear
echo ""
echo "  This Script will download the Jasper or Jasper-Dev code. "
echo "	Please keep in mind that it does not do anything BUT get the code"
echo "  All of the dependencies for a base install have been met by the base image."
echo "  If you find that there is a missing dependency or a problem, "
echo "  please submit a pull request or comment in the GitHub Repo (link below)."
echo "  Pull Request Link: https://github.com/mattcurrycom/Jasper-RPI-Tools "
echo "  "
echo "                 Press ANY key when ready to continue.                 "
read ANY

if [[ $ANY != b ]]; then
exit

sleep 3


