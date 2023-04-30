#!/bin/bash
#instalacion de SNAP
sudo apt-get update;
sudo apt-get install snapd -y;

#habilitar los servicios de SNAPD
sudo service snapd start;

#programas:
sudo snap install code --classic;
sudo snap install intellij-idea-community --classic;
sudo snap install mysql-workbench-community;
sudo snap install postman;
sudo snap install figma-linux;
sudo snap install zoom-client;
sudo snap install obs-studio;
sudo snap install shotcut --classic;
sudo snap install winbox;
sudo snap install remmina;

#habilitar los programas instalados con SNAP
sudo systemctl enable snapd.apparmor;

#instalacion ANYDESK
sudo su;
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -;
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list;
gpg --keyserver keyserver.ubuntu.com --recv 18DF3741CDFFDE29;
gpg --armor --export 18DF3741CDFFDE29 | sudo apt-key add -;
apt-get update;
apt-get install anydesk;

#reinicio
reboot
