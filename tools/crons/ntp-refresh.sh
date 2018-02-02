#!/bin/bash

#	ntp-refresh.sh
#	By: Matthew Curry
#	Date: Unknown
#	Description: Manual Refresh of NTP, useful on cron if you have a drift issue.

sudo service ntp stop &&
sudo ntpdate pool.ntp.org &&
sudo service ntp start
