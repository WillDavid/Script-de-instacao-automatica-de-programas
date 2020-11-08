#!/bin/bash

sudo apt-get update

echo -e '\n\nUpdate\n\n'
sleep 10


################################
#UMAKE
echo -e '\n\nUMAKE\n\n'
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y
sudo apt-get update
sudo apt-get install ubuntu-make -y
echo -e '\n\n[Instalado]UMAKE\n\n'
sleep 10

###############################
#Snapd
echo -e '\n\nSnapd\n\n'
sudo apt update
sudo apt install snapd
echo -e '\n\[Instalado]Snapd\n\n'

################################
#Visual Studio Code
echo -e '\n\nVisual Studio Code\n\n'
sudo apt-get update
umake ide visual-studio-code
echo -e '\n\n[Instalado]Visual Studio Code\n\n'
sleep 10

###############################
#Telegram
echo -e '\n\nTelegram\n\n'
sudo add-apt-repository ppa:atareao/telegramp
sudo apt-get update
sudo apt-get install telegram
echo -e '\n\n[Instalado]Telegram\n\n'
sleep 10
#sudo apt-get remove telegram && sudo apt-get autoremove

###############################
#Eclipse
echo -e '\n\nEclipse\n\n'
sudo snap install --classic eclipse
sudo apt install default-jre
echo -e '\n\n[Instalado]Eclipse\n\n'
sleep 10

###############################
#Spotify
echo -e '\n\nSpotify\n\n'
sudo apt-get update
snap install spotify
echo -e '\n\n[Instalado]Spotify\n\n'
sleep 10

###############################
#Discord
echo -e '\n\nDiscord\n\n'
sudo snap install discord
sudo apt-get update
echo -e '\n\n[Instalado]Discord\n\n'
sleep 10

###############################
#Firefox
echo -e '\n\nFirefox\n\n'
sudo apt-get update
sudo apt install firefox
echo -e '\n\n[Instalado]Firefox\n\n'
sleep 10

###############################
#GithubDesktop
echo -e '\n\nGithub Desktop\n\n'
sudo apt-get update
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
sudo apt-get update
sudo apt install github-desktop
echo -e '\n\n[Instalado]Github Desktop\n\n'
sleep 10

################################
#Atualização Final
sudo apt-get install -f
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get update
echo -e '\n\n[Finalizado]\n\n'
