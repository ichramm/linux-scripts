#!/bin/bash

sudo systemctl stop bluetooth

sudo modprobe uinput

sudo systemctl start bluetooth

echo 'uinput' | sudo tee -a /etc/modules

