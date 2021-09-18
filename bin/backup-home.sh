#!/bin/bash

excluded="VirtualBox VMs,.local,.cache,.config,.mozilla"
IFS=','
read -a excluded <<< "$excluded"

PARAMS=""
for dir in ${excluded[@]}; do
  PARAMS="$PARAMS --exclude='$HOME/$dir'"
done

echo tar cvzf home-ichramm.tar.gz $PARAMS $HOME

