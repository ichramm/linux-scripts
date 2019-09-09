#!/bin/bash

sudo apt install libgtest-dev

cd /usr/src/gtest
sudo cmake .
sudo make
sudo mv libg* /usr/lib/
sudo make clean
 