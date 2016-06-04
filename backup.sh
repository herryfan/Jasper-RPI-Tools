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
DESTINATION="/home/example/dir"
USER="user"


echo $DATEREAL
cd /home/ &&
sudo tar -zcvf $HOSTNAME.bk.$DATE.tar.gz $USER &&
scp $HOSTNAME.bk.* $USER@$SERVER:$DESTINATION &&
rm -fv *.bk.*gz &&

exit
