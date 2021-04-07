#!/bin/bash

#
# https://bobcares.com/blog/install-minecraft-server-on-ubuntu/

if ! test "$USER" = "minecraft"; then
  sudo useradd -r -m -U -d /opt/minecraft -s /bin/bash minecraft || true
  sudo su minecraft -c $0
  sudo ufw allow 25565/tcp
  exit
fi

mkdir -p ~/{backups,tools,server}

git clone https://github.com/Tiiffi/mcrcon.git ~/tools/mcrcon

cd ~/tools/mcrcon
gcc -std=gnu11 -pedantic -Wall -Wextra -O2 -s -o mcrcon mcrcon.c

./mcrcon -v

wget https://launcher.mojang.com/v1/objects/a0d03225615ba897619220e256a266cb33a44b6b/server.jar -P ~/server

cd ~/server
java -Xmx1024M -Xms1024M -jar server.jar nogui

echo 'eula=true' >> ~/server/eula.txt
echo 'rcon.port=25575' >> ~/server/server.properties
echo 'rcon.password=prueba' >> ~/server/server.properties
echo 'enable-rcon=true' >> ~/server/server.properties

# not creating the service..
exit

echo '[Unit]
Description=Minecraft Server
After=network.target

[Service]
User=minecraft
Nice=1
KillMode=none
SuccessExitStatus=0 1
ProtectHome=true
ProtectSystem=full
PrivateDevices=true
NoNewPrivileges=true
WorkingDirectory=/opt/minecraft/server
ExecStart=/usr/bin/java -Xmx1024M -Xms1024M -jar server.jar nogui
ExecStop=/opt/minecraft/tools/mcrcon/mcrcon -H 127.0.0.1 -P 25575 -p strong-password stop

[Install]
WantedBy=multi-user.target' | sudo tee /etc/systemd/system/minecraft.service


sudo systemctl daemon-reload
sudo systemctl enable minecraft

sudo ufw allow 25565/tcp
