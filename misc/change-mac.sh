#!/bin/bash

# sudo cronttab -e
#0 7 * * * /home/ichramm/devel/linux-scripts/misc/change-mac.sh

DIR=$(dirname $(readlink -f $0))
IFACE=${1:-wlp59s0}

set -e
set -x

MAC=`$DIR/macaddr.sh`
echo "MAC: $MAC"

sudo ip link set $IFACE down

sudo ip link set $IFACE address $MAC

sudo ip link set $IFACE up

sleep 0.5
ip link show $IFACE

wall "MAC changed to $MAC"

