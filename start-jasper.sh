#!/bin/bash

#	Script:  start-jasper.sh
#	Description: Starting Jasper Service at boot
#	By: Matthew Curry
#	Date: 05/30/2016
#	Github: https://github.com/mattcurrycom
#	Note: Add to crontab like so to start at boot (@reboot /locationofscript/start-jasper.sh)

USER=pi

nohup /usr/bin/python /home/$USER/jasper/jasper.py &>> /home/$USER/jasper/jasper.log &
