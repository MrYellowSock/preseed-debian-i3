# I3 + essentials installation
apt update
apt -y install wget curl
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt update
apt -y install i3 xorg xinit lightdm thunar neovim xrdp xfce4-terminal diodon htop google-chrome-stable

# main user's utility
su - ss
cd ~
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install --lts
mkdir -p ~JobCredentials/con-release/

# enabling i3 desktop
systemctl enable lightdm
systemctl enable lightdm
systemctl enable graphical.target --force
systemctl set-default graphical.target
