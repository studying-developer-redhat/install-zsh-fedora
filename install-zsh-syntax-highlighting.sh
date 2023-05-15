#!/bin/bash
echo "### >>>>>> Start Install ZSH Syntax Highlighting and Auto Suggestions <<<<<< ###"
echo "Cloning Syntax... and Autosuggestions..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Update plugins for ~/.zshrc and source file"
echo "plugins=(git zsh-syntax-highlighting zsh-autosuggestions)"

echo "### >>>>>> End Install ZSH Syntax Highlighting and Auto Suggestions <<<<<< ###"
