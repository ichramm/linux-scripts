#!/bin/bash

if ! grep -q 'mitigations=off' /etc/default/grub; then
  sudo sed -i 's/\(^GRUB_CMDLINE_LINUX_DEFAULT=".*\)"/\1 mitigations=off"/' /etc/default/grub
  sudo update-grub
else
  echo "CPU mitigations are already disabled"
fi

