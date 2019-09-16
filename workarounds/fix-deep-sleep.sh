#!/bin/bash

if ! grep -q '\[deep\]' /sys/power/mem_sleep; then
  echo deep | sudo tee /sys/power/mem_sleep
  sudo sed -i 's/\(^GRUB_CMDLINE_LINUX_DEFAULT=".*\)"/\1 mem_sleep_default=deep"/' /etc/default/grub
  sudo update-grub
else
  echo "Deep sleep mode is already set in /sys/power/mem_sleep"
fi

