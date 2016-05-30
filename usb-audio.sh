#!/bin/bash

echo "
##########################################
#                                        #
#	USB Audio Config Tool            #
#       By: Matthew Curry                #
#       Updated: 03/13/2016              #
#                                        #
#                                        #
##########################################"
echo ""

echo "This is a PRE-ALPHA version of this script.  Use at your own risk."
echo "Sleeping 10 Seconds to allow for ctrl-c"
sleep 10
echo ""

echo " We are going to setup Alsa to use USB Audio."
echo " Would you like to make a backup of your alsa-base.conf first?"
echo " Backup OLD alsa-base.conf (YES/NO)"
echo ""
read BACKUP
if [[ $BACKUP == "YES" ]];
then
	echo ""
	echo "Where would you like the backup stored?"
	echo "Example: /home/user or /tmp"
	read BACKUPDIR
	echo ""
	echo "You chose to backup your config, it will be put in  $BACKUPDIR"
	cp /etc/modprobe.d/alsa-base.conf $BACKUPDIR/
	echo ""
	echo "Backup Completed, Please Verify Before moving forward"
	echo "This is up to you, if you do not, it is at your own risk"
	echo ""


else
	echo "What is the path to your jasper folder?"
	echo "Example: /home/user/jasper"
	read JASPERHOME
	echo "Your Jasper folder is: $JASPERHOME"
	echo ""
	echo "Modifying Alsa-Base.conf"
	echo ""
	sudo sed -i 's/options snd-pcsp/#options snd-pcsp/g' /etc/modprobe.d/alsa-base.conf
	sudo sed -i 's/options snd-usb-audio/#options snd-usb-audio/g' /etc/modprobe.d/alsa-base.conf
	echo "Modification Complete, reloading alsa"
	echo ""

	# Reload Alsa
	sudo alsa force-reload
	echo "Alsa Reloaded"
	echo ""

fi

	echo "Would you like to test your audio?"
	echo "Please answer with YES or NO"
	echo ""

	read AUDIOTEST
	if [[ $AUDIOTEST == "YES" ]]; then
		echo "Test your audio equipment by speaking into the microphone for 3 seconds"
		echo "Press ENTER to begin"
		read temp
		arecord -d 3 -f cd /tmp/3secondtest.wav
		echo "playing back audio test"
		aplay -d 3 -f cd /tmp/3secondtest.wav
		echo "If you didn't hear anything, you might want to try adjusting your volume levels for your speaker and microphone by running"
		echo "alsamixer"
	else
		echo "Not testing audio"
		echo "Install Complete, exiting"
	exit 0
fi
