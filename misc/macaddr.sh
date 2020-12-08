#!/bin/bash

# not really octets.  just sections.
function rnd_octect() {
  hex=$(echo "obase=16;$(expr $RANDOM % 255)" | bc)
  if [ ${#hex} -lt 2 ]; then
    echo "0$hex"
  else
    echo $hex
  fi
}

# mac stem
octets='00:60:2F' # Cisco
octets='A8:23:FE' # LG electronics

echo "${octets}:$(rnd_octect):$(rnd_octect):$(rnd_octect)"

