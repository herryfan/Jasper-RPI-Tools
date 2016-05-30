#!/bin/bash
#set -x
#
#	 backup-jasper.sh
#	 Backs Up HomeDir to a tar file, and sends to a server for backups.
#	 Author: Matthew Curry
# 	 03/18/2016
#
#  HINT: Setup Keyed Access to avoid passwords
#  and use a cron job to run as often as you like.
#

DATE=$(date +"%Y%m%d%H%M")
DATEREAL=$(date +%m/\%d/\%Y\ %H\:%M)
SERVER="serverIP"
DESTINATION="server destination directory"
USER="user"

#echo $DATEREAL
#echo "There is no error handling, if it stops uncomment the set-x at the top and run again."
#sleep 4
#echo "Ok here we go..."
#sleep 2
cd /home/ &&
sudo tar -zcvf abaddon.bk.$DATE.tar.gz mcurry &&
scp $HOSTNAME.bk.* $USER@$SERVER:$DESTINATION &&
rm -fv *.bk.*gz &&

exit
