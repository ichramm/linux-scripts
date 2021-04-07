#!/bin/bash

sudo apt install torbrowser-launcher

gpg --homedir ~/.local/share/torbrowser/gnupg_homedir/ --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org

torbrowser-launcher

