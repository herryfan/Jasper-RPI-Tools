#!/bin/bash

#  Author: Matthew Curry
#  Date: 06/06/2016
#  Description: Install RPI-Jasper-Dependencies from Github, and install them at a system level.
#  Note: PLEASE READ:  Keep in mind that this is for external images that need to be processed
#    to get jasper working. NOT FOR OUR RPI2/3 Images.


echo " Would you like to install the RPI-Jasper-Dependencies?"
echo " Answer: (yes/no) [Lower Case Only Please]"
read ANSWER
echo $ANSWER

if [[ $ANSWER == "yes" ]]; then
	echo "Installing..."
	echo "You are now a super hacker...."
	cd
	git clone https://github.com/mattcurrycom/RPI-Jasper-Dependencies
	cd RPI-Jasper-Dependencies
	echo " The files should have been cloned, installing..."
	sudo dpkg -i *.deb && mv *.tgz ../ && cd .. && rm -Rfv RPI-Jasper-Dependencies &&
	echo "Files Removed after install"
	tar -zxvf phonetisaurus.tgz &&
	cd g014b2b &&
	echo "Compiling FST for Phonetisaurus." &&
	./compile-fst.sh &&
	echo "Completed Compile for FST"

else
	echo " Ok, well we will be here..."
	echo " USAGE: Answer must be yes or no in lower case"
exit 0

fi
