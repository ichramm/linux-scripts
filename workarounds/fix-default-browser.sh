#!/bin/bash

DEFAULT_BROWSER=google-chrome.desktop

sudo apt install gvfs-bin

gvfs-mime --set x-scheme-handler/http $DEFAULT_BROWSER
gvfs-mime --set x-scheme-handler/https $DEFAULT_BROWSER
