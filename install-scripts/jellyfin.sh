#!/bin/bash

sudo apt install apt-transport-https
wget -O - https://repo.jellyfin.org/jellyfin_team.gpg.key | sudo apt-key add -
echo "deb [arch=$(dpkg --print-architecture)] https://repo.jellyfin.org/ubuntu $(awk -F'=' '/^VERSION_CODENAME=/{ print $NF }' /etc/os-release) main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
sudo apt update
sudo apt install jellyfin

