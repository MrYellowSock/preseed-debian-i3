#!/bin/bash
# I3 + essentials installation
apt-get update
apt-get -y install gnupg
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update
apt-get -y install i3 xorg xinit lightdm thunar xrdp xfce4-terminal
apt-get -y install neovim git fonts-thai-tlwg podman diodon htop rsync lm-sensors stress google-chrome-stable autossh tmux kitty ufw

# TODO : Set Maxclients in /etc/x11/xrdp/xorg.conf to >= 512

# enabling i3 desktop
systemctl enable lightdm
systemctl enable graphical.target --force
systemctl set-default graphical.target

su - ss -c "curl https://raw.githubusercontent.com/MrYellowSock/preseed-debian-i3/master/postinstall_user.sh | bash"
