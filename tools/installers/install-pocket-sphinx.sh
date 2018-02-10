#!/bin/bash



sudo apt-get -y install python-pocketsphinx &&
# add repo
sudo su -c "echo 'deb http://cognomen.co.uk/apt/debian jessie main' > /etc/apt/sources.list.d/cognomen.list" &&
# import pgp key
gpg --keyserver keyserver.ubuntu.com --recv  FC88E181D61C9391C4A49682CF36B219807AA92B && gpg --export --armor keymaster@cognomen.co.uk | sudo apt-key add -
# update
sudo apt-get update
sudo apt-get -y install phonetisaurus m2m-aligner mitlm libfst-tools libfst1-plugins-base libfst-dev

