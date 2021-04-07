#!/bin/bash

wget -q -O - https://mkvtoolnix.download/gpg-pub-moritzbunkus.txt | sudo apt-key add -

echo "deb https://mkvtoolnix.download/ubuntu/ bionic main" | sudo tee /etc/apt/sources.list.d/mkvtoolnix.list
#deb-src https://mkvtoolnix.download/ubuntu/ bionic main

sudo apt update
sudo apt install -y mkvtoolnix mkvtoolnix-gui

