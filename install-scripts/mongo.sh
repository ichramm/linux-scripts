#!/bin/bash

VERSION=4.2

#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
wget -qO - https://www.mongodb.org/static/pgp/server-$VERSION.asc | sudo apt-key add -

echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/$VERSION multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-$VERSION.list

sudo apt-get update

sudo apt-get -y install -y mongodb-org
