#!/bin/bash

#
# Jasper Repo Installer
# Author: Matthew Curry
# Date: 09/08/2016
# Dependencies: git and basic knowledge how to use it.
#

# Variables [if needed]

DATE=$(date +"%Y%m%d%H%M")
DATEREAL=$(date +%m/\%d/\%Y\ %H\:%M)

#USER=pi
#GITDIR=/home/$USER
#BRANCH=master
clear

echo "                     Date:   $DATEREAL
  This Script will download the Jasper or Jasper-Dev code.
  Please keep in mind that it does not do anything BUT download the code.
  All of the dependencies for a base install have been met by the base image.
  If you are not using the base image created by Matthew Curry;
  please keep in mind that this is not an installer for Jasper as a whole, just the repo.
  If you find that there is a missing dependency or a problem, 
  please submit a pull request or comment in the GitHub Repo (link below).

  Pull Request Link: https://github.com/mattcurrycom/Jasper-RPI-Tools  "
read -rsn1 -p"                    Press any key to continue                    "
clear
echo " What user would you like to install to? [Example: pi]"
read USER &&
echo " Where should we download the Client? [Example: /home/pi]"
read GITDIR &&
echo " What branch ? [Example: master or dev]"
read BRANCH &&
echo  ""

if [[ $BRANCH == master ]]; then
    cd $GITDIR &&
    git clone https://github.com/jasperproject/jasper-client &&
    echo ""
    echo "  Jasper Repo [Master Branch] Cloned into $GITDIR with Branch $BRANCH " &&
    echo ""

  else if [[ $BRANCH == dev ]]; then
    cd $GITDIR &&
    git clone https://github.com/jasperproject/jasper-client &&
    cd jasper-client &&
    git checkout jasper-dev &&
    cd &&
    clear
    echo ""
    echo "  Jasper Repo [Development Branch] Cloned into $GITDIR with Branch $BRANCH "
    echo ""

fi
fi

sleep 1
#### Jasper-RPI-Tools ####
echo ""
echo "  Would you like to install the Jasper-RPI-Tools repo? [yes/no]:"
echo ""

read JRTOOLS
  if [[ $JRTOOLS == yes ]];
    then cd && git clone https://github.com/mattcurrycom/Jasper-RPI-Tools.git && echo " Jasper-RPI-Tools Cloned"
  elif [[ $JRTOOLS == no ]]
    then  echo " Jasper-RPI-Tools Not Installed."
  fi

sleep 1
#### Jasper Modules ####
echo ""
echo "  Would you like to install the Jasper-Modules(Master Branch Only) repo? [yes/no]:"
echo ""

read JRMODULES
  if [[ $JRMODULES == yes ]];
    then cd && git clone https://github.com/mattcurrycom/jasper-modules.git && echo " Jasper Modules Cloned, keep in mind this doesn't install them or their dependencies."
  elif [[ $JRMODULES == no ]]
    then  echo " Jasper Modules Not Downloaded"
fi
sleep 2
echo ""
echo ""
echo "Thank you for using this, if useful please help the project at MattCurry.Com"
echo ""
exit

