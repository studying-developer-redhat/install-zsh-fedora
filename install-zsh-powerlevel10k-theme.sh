#!/bin/bash
echo "### >>>>>> Start Install ZSH PowerLevel10k Theme <<<<<< ###"

echo "Install the theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
source ~/.zshrc

echo "Adding emojies"
sudo dnf install google-noto-emoji-color-fonts -y

mkdir -p ~/.config/fontconfig/
touch ~/.config/fontconfig/fonts.conf

echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <alias>
    <family>serif</family>
    <prefer>
      <family>Noto Color Emoji</family>
    </prefer>
  </alias>
  <alias>
    <family>sans-serif</family>
    <prefer>
      <family>Noto Color Emoji</family>
    </prefer>
  </alias>
  <alias>
    <family>monospace</family>
    <prefer>
      <family>Noto Color Emoji</family>
    </prefer>
  </alias>
</fontconfig>' >> ~/.config/fontconfig/fonts.conf

cat ~/.config/fontconfig/fonts.conf

fc-cache -f

echo "### >>>>>> End Install ZSH PowerLevel10k Theme <<<<<< ###"
