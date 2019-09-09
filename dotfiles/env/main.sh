#!/bin/bash

# Called in .bashrc and by the desktop environment

#export PATH="$PATH:$HOME/Dropbox/linux/environment/scripts"

DIR=$(dirname $(readlink -f ${BASH_SOURCE}))

for script in $DIR/scripts/*.sh; do
  . $script "LOGIN"
done
