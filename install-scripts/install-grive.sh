sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update

sudo apt install -y grive

mkdir -p $HOME/Drive

systemctl --user enable grive-timer@Drive.timer
systemctl --user start grive-timer@Drive.timer
systemctl --user enable grive-changes@Drive.service
systemctl --user start grive-changes@Drive.service
