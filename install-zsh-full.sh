#!/bin/bash
echo "### >>>>>> Start Install ZSH full <<<<<< ###"

echo "Show Permissions Scripts Before Permissions"
ls -la

echo "Adding Permissions to Run Scripts"
chmod +x install-zsh.sh install-zsh-powerlevel10k-theme.sh install-zsh-syntax-highlighting.sh

echo "Show Permissions Scripts After Permissions"
ls -la

echo "Running the script ./install-zsh.sh"
./install-zsh.sh

echo "Running the script ./install-zsh-powerlevel10k-theme.sh"
./install-zsh-powerlevel10k-theme.sh

echo "Running the script ./install-zsh-syntax-highlighting.sh"
./install-zsh-syntax-highlighting.sh

echo "### >>>>>> End Install ZSH full <<<<<< ###"
