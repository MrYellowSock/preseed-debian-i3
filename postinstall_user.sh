#!/bin/bash
# main user's utility
su - ss
cd ~
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source .bashrc
nvm install --lts
mkdir -p ~/JobCredentials/con-release/
mkdir -p ~/.config/i3/
wget https://raw.githubusercontent.com/MrYellowSock/preseed-debian-i3/master/config -O ~/.config/i3/config
