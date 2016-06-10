#!/bin/bash

USER=pi
sudo apt-get -y purge --remove python-pyaudio &&
sudo apt-get -y install libasound-dev python-all-dev portaudio19-dev

# PyAudio / Port Audio Fix
# Download Port Audio
cd /home/$USER
wget http://portaudio.com/archives/pa_stable_v19_20140130.tgz
tar -zxvf pa_stable_v19_20140130.tgz
cd portaudio
./configure && make &&
sudo make install &&
cd /home/$USER
rm -Rfv /home/$USER/portaudio
echo "PyAudio Fix Completed"

# Module Python Packages
# Not Core, but Super Common
sudo pip install wolframalpha
sudo rm -f /home/$USER/pa*tgz*

sudo pip install pyaudio --no-cache
exit

