#!/bin/bash


# These are just notes recording some items neededing automation...
# System Packages

sudo apt-get -y install libasound-dev python-dev

# PyAudio / Port Audio Fix
# Download Port Audio
cd
wget http://portaudio.com/archives/pa_stable_v19_20140130.tgz
tar -zxvf pa_stable_v19_20140130.tgz
cd portaudio
./configure && make
sudo make install
sudo pip install pyaudio
cd
rm -Rfv portaudio
echo "PyAudio Fix Completed"

# Module Python Packages
# Not Core, but Super Common
sudo pip install wolframalpha

sudo rm -f /home/$USER/pa*tgz 

exit
