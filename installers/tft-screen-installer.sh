#!/bin/bash


#sudo rpi-update

sudo apt-get -y install gcc python-pygame python-dev

sudo wget https://pypi.python.org/packages/source/R/RPi.GPIO/RPi.GPIO-0.5.11.tar.gz

sudo tar zxvf RPi.GPIO-0.5.11.tar.gz

cd RPi.GPIO-0.5.11

sudo python setup.py install

####
sudo echo "dtparam=i2c_arm=on, spi=on" >> /boot/config.txt

sudo echo "fbtft_device name=pitft rotate=270 speed=48000000 fps=30" >> /etc/modules

sudo echo "Add the following line before “rootwait” fbcon=map:10 fbcon=font:VGA8x8 on /boot/cmdline.txt"
