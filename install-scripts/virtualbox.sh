#!/bin/bash

sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo apt-key add -

#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A2F683C52980AECF

sudo add-apt-repository "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"

sudo apt-get update

sudo apt-get install virtualbox-6.0

