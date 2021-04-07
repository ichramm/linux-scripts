#!/bin/bash

mkdir -p $HOME/bin

wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein \
  -O $HOME/bin/lein

chmod +x $HOME/bin/lein
  
$HOME/bin/lein

