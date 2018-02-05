#!/bin/bash
#set -x
####
#
#   Jasper RPI Tools
#   Author: Matthew Curry
#   Description: Calls Various Jasper RPI Tools
#
####

##################################################
#### Variables ####
JRTDIR=/home/mcurry/CorseHair/GIT/MDC/Jasper-RPI-Tools
DATE=$(date +"%Y%m%d%H%M")
DATEREAL=$(date +%m/\%d/\%Y\ %H\:%M)

##################################################

# TODO: Menu needs Re-arrangement
# Breakout items into functions
# Remove Un-needed Vars


echo "##################################################"
echo "#               Jasper RPI Tools                 #"
echo "##################################################"


echo "##################################################"
echo "# 1.  Install Jasper Repository. (Master OR Dev) "  # Completed
echo "# 2.  Download Modules Repository. (Master Only) "  # In progress
echo "# 3.  Test your audio.                (RPI Only) "  
echo "# 4.  Fix Audio (Bitrate)-BETA.                  "
echo "# 5.  Install Jasper as Service.                 "
echo "# 6.  Install Home Assistant/MQTT Server.        "  # Script Finished
echo "# 7.  Restart Jasper Service.                    "  
echo "# 8.  Stop Jasper Service.                       "
echo "# 9.  Install Jasper Dependencies.   (Master/Dev)"
echo "# 10. Convert Profile.yml to Dev Syntax.         "
echo "# 11. Convert Profile.yml to Master Syntax.      "
echo "# 12. Update RPI (OS and FW).                    "
echo "# 13. Reboot RPI.                                "
echo "##################################################"


echo ""
echo "    What would you like to do? "
echo ""

read MENU

echo "You have made your selection of '$MENU'"

if [[ $MENU == 1 ]];
  then echo "                     Date:   $DATEREAL
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


if [[ $BRANCH == master ]]; then
    cd $GITDIR &&
    git clone https://github.com/jasperproject/jasper-client &&
    echo "  Jasper Repo [Master Branch] Cloned into $GITDIR with Branch $BRANCH "
  else if [[ $BRANCH == dev ]]; then
    cd $GITDIR &&
    git clone https://github.com/jasperproject/jasper-client &&
    cd jasper-client &&
    git checkout jasper-dev &&
    cd
    echo "  Jasper Repo [Development Branch] Cloned into $GITDIR with Branch $BRANCH "
    echo ""
fi
fi
fi
