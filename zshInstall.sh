#! /usr/bin/sh

echo "Installing ZSH ..."
sudo apt install zsh -y

echo "ZSH installation complete. Installing OhMyZsh ..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "OhMyZsh installed..."
echo "Copying config file..."

mv .zshrc ~/.zshrc


read -p "Do you wish to reboot now ?" yn
case $yn in
    [Yy]* ) sudo reboot;;
    [Nn]* ) echo Oki next time;;
    * ) echo "Please answer yes or no.";;
esac

