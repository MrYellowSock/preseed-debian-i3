#!/bin/bash
# main user's utility
curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install v16.3.0

mkdir -p ~/.config/i3/
mkdir -p ~/.config/i3status/
wget https://raw.githubusercontent.com/MrYellowSock/preseed-debian-i3/master/config -O ~/.config/i3/config
wget https://raw.githubusercontent.com/MrYellowSock/preseed-debian-i3/master/config-status -O ~/.config/i3status/config
