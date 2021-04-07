#!/bin/bash

echo 'deb http://download.opensuse.org/repositories/home:/MasterSoft24/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:MasterSoft24.list
curl -fsSL https://download.opensuse.org/repositories/home:MasterSoft24/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_MasterSoft24.gpg > /dev/null
sudo apt update
sudo apt install cloudcross

