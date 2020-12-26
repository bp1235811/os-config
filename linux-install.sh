sudo apt update -y
sudo apt upgrade -y

# Add Repositories
sudo add-apt-repository ppa:openjdk-r/ppa
sudo add-apt-repository -y ppa:agornostal/ulauncher

sudo apt-get update
sudo apt-get install 

# Update Repos
sudo apt update -y
sudo apt upgrade -y

# Install 
sudo apt-get install -y unzip htop pdftk curl wget gpick p7zip-full fonts-powerline build-essential git gimp zsh flameshot ulauncher redis-tools calibre tree qemu-kvm timeshift gnome-shell-extensions gnome-tweaks openjdk-8-jdk code

# AWS setup
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# Node JS
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic test"
sudo apt update
sudo apt install docker-ce

# Java JDK 8
# unzip tar to /usr/lib/jvm dir
# export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_261
# export PATH=$PATH:$JAVA_HOME/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install v14.15.3

# Docker setup

# Notion Wrapper for Linux
mkdir ~/Applications
cd ~/Applications
git clone git@github.com:puneetsl/lotion.git
cd ~/Applications/lotion
./install.sh

#Various 
sudo adduser bhavik kvm
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)

echo "Software
- Standard Notes
- Slack
- Android Studio
- Webstorm
- Intellij Idea
- Visual studio
- uLauncher (https://ulauncher.io/) cp `dark` theme to ~/.config/ulauncher/user-themes/    
"

echo "Gnome Extensions
- Dash to Dock  
- Dash to Panel
- Remove Alt+Tab Delay v2
- User Themes
- Sound Input & Output Device Chooser
- Bluetooth quick connect 
- gTile (for Ultrawide Monitors)
- Caffeine 
- Impatience 
- Steal My Focus 
- Toggle Night Light
- Night Light Slider
"

echo "\n\n"


# Linux Configuration
# usr/share/applications

export WORKSPACE=~/Workspace/config-os
export CONFIGS=$WORKSPACE/configurations

ln -sf $CONFIGS/.xbindkeysrc ~/.xbindkeysrc
ln -sf $CONFIGS/.zshrc ~/.zshrc
ln -sf $WORKSPACE/.themes ~/.themes
ln -sf $WORKSPACE/.fonts ~/.fonts
ln -sf $WORKSPACE/configurations/gnome-launchers/*.desktop ~/.local/share/applications 
ln -sf $WORKSPACE/configurations/zsh-themes/*.zsh-theme ~/.oh-my-zsh/themes
ln -sf $WORKSPACE/configurations/zsh-plugins/*/ ~/.oh-my-zsh/plugins
ln -sf $WORKSPACE/configurations/fontconfig ~/.config

# ln -sf $WORKSPACE/.themes/uLaunch-Dark/user-themes ~/.config/ulauncher

cd
touch ~/.workenv
echo . ~/.workenv >> ~/.profile