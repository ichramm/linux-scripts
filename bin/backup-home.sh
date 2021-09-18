#!/bin/bash

excluded="VirtualBox VMs,.local,.cache,.config,.wine,.mozilla,Drive,Documents,Music,Pictures,R,octave,snap,nltk_data,Arduino"
IFS=','
read -a excluded <<< "$excluded"

PARAMS=""
for dir in ${excluded[@]}; do
  PARAMS="$PARAMS --exclude='$HOME/$dir/*'"
done

echo $PARAMS $HOME  | xargs tar czf home-ichramm.tar.gz

