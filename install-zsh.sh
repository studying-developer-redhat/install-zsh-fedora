#!/bin/bash
echo "### >>>>>> Start Install ZSH <<<<<< ###"

echo "Run System Update"
sudo dnf update -y

echo "Installing Zsh in Fedora System"
sudo dnf install zsh -y

echo "Show version Zsh in Fedora System"
zsh --version

echo "Install oh-my-zsh on Fedora System"
sudo dnf install wget curl -y
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "Making Zsh as Default Shell in Fedora System"
chsh -s $(which zsh)

echo "### >>>>>> End Install ZSH <<<<<< ###"
