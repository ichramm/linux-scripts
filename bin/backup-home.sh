#!/bin/bash

excluded=".var,.vscode,.thunderbird,VirtualBox VMs,.local,.cache,.config,.wine,.mozilla,Applications,Drive,Documents,Music,Pictures,R,octave,snap,nltk_data,Arduino,.gradle,.m2,Android,.ros"
IFS=','
read -a excluded <<< "$excluded"

PARAMS=""
for dir in ${excluded[@]}; do
  PARAMS="$PARAMS --exclude='$HOME/$dir/*'"
done

echo $PARAMS $HOME  | xargs tar czf home-ichramm-$(date +'%Y%m%dT%H%M').tar.gz

