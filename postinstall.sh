#!/bin/bash
# I3 + essentials installation
apt-get update
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update
apt-get -y install i3 xorg xinit lightdm thunar neovim xrdp xfce4-terminal fonts-thai-tlwg podman diodon htop google-chrome-stable

# enabling i3 desktop
systemctl enable lightdm
systemctl enable lightdm
systemctl enable graphical.target --force
systemctl set-default graphical.target

su - ss -c "curl https://raw.githubusercontent.com/MrYellowSock/preseed-debian-i3/master/postinstall_user.sh | bash"
