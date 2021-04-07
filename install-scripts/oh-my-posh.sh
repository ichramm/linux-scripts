#!/bin/bash

sudo apt -y install unzip wget golang

wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O - | sudo tee /usr/local/bin/oh-my-posh > /dev/null

sudo chmod +x /usr/local/bin/oh-my-posh

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
rm ~/.poshthemes/themes.zip

chmod u+rw ~/.poshthemes/*.json

if ! grep -q "oh-my-posh" ~/.bashrc; then
  echo 'eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/jandedobbeleer.omp.json)"' >> ~/.bashrc
fi

