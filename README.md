# MANY OF THESE SCRIPTS WILL NO LONGER BE NEEDED AS OF THE VERSION 1.6 (MattCurry.Com) IMAGE.


# Jasper-RPI-Tools
Miscllaneous Scripts for Jasper Configuration and Troubleshooting.

## Script Descriptions
* audiotest.sh  - Records/Playsback Audio from your default audio device.
  * - This will error out if your default device is not setup correctly.
* backup.sh - Allows for backups to another server.
  * - This requires a server be already keyed, and the configuration section of the script filled in prior to use.
* ntp-refresh.sh - If you are having issues with time drift, you can put this on a cron to correct it.
  * - Feel free to use for testing; however I have not had to use this since the RPI2.
* remove-desktop-environments.sh - For images other than ours hosted, this removes the desktop environment packages.
* rpi-updater.sh - For images OTHER than ours; this is to be ran after any remove scripts.
  * - Debian based only.
* tft-screen-installer.sh - Under installers.  This tools is used to install the needed drivers for many small TFT screens.
  * - Requires a reboot to take affect.



