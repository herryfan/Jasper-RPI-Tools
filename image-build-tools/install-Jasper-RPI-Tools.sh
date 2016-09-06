#!/bin/bash

#  Author: Matthew Curry
#  Date: 06/06/2016
#  Description: Install Jasper-RPI-Tools from GitHub
#  Note: See README for more info.
echo " Would you like to install the Jasper RPI Tools?"
echo " These are very useful in troubleshooting."
echo " Answer: (yes/no) [Lower Case Only Please]"
read ANSWER
echo $ANSWER

if [[ $ANSWER == "yes" ]]; then
	echo "Installing Jasper RPI Tools"
	echo "Wow, you are now officially l33t"
	cd
	git clone https://github.com/mattcurrycom/Jasper-RPI-Tools
	cd
	echo " The Tools Should have been cloned, please verify"
else
	echo " Tools Not installed"
	echo " Answer must be yes or no in lower case"
exit 0

fi
