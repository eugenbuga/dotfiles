#!/bin/bash
#draft from vm
echo 'deb http://download.opensuse.org/repositories/home:/antergos/Debian_9.0/ /' | sudo tee /etc/apt/sources.list.d/home:antergos.list
curl -fsSL https://download.opensuse.org/repositories/home:antergos/Debian_9.0/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_antergos.gpg > /dev/null

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
  188  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update
sudo apt install -y intel-microcode awesome lightdm lightdm-webkit2-greeter dmenu xfce4-terminal pcmanfm nitrogen network-manager xorg brave-browser compton rofi git lxappearence

git clone --recurse-submodules --remote-sub -ymodules --depth 1 -j 2 https://github.com/lcpz/awesome-copycats.git
mv -bv awesome-copycats/{*,.[^.]*} ~/.config/awesome; rm -rf awesome-copycats

sudo git clone https://github.com/TophC7/Enkel.git /usr/share/lightdm-webkit/themes/enkel/

sudo git clone https://github.com/FallingSnow/lightdm-webkit2-material2.git /usr/share/lightdm-webkit/themes/material2

wget https://github.com/FallingSnow/lightdm-webkit2-material2/releases/download/v0.0.5/lightdm-webkit2-material2-0.0.5.tar.gz

mv material2/* /usr/share/lightdm-webkit/themese/material2/

sudo systemctl restart lightdm
