#!/usr/bin/sh

# Update
yay -Syyu

# remove lts kernel, if installed
sudo pacman -R linux-lts

# Nvida driver
yes | sudo pacman -S nvidia-installer-dkms
yes | sudo pacman -S linux-headers
yes | sudo nvidia-installer-dkms

# Graphics card driver
yes | yay -S xp-pen-tablet

# VirtualBox
yes | sudo pacman -S virtualbox virtualbox-guest-iso
sudo modprobe vboxdrv

yes | sudo pacman -S steam discord telegram-desktop spotify element-desktop 
yes | yay -S whalebird-bin
yes | yay -S webcord-git
yes | yay -S moderndeck-bin

# Utilities
yes | sudo pacman -S fish exa bat neovim tldr lolcat fd tmux sshfs
yes | sudo pacman -S alacritty
yes | yay -S  ttf-ms-win10-auto

# Multimedia
yes | sudo pacman -S kdenlive krita gmic gimp vlc blender audacity inkscpae

# Development
yes | yay -S visual-studio-code-insiders-bin
yes |  yay -S unityhub-beta godot
yes | sudo pacman -S dotnet-sdk
yes | yay -S texlive-core #texlive-full

# Office programs
yes | sudo pacman -S libreoffice-fresh
yes | yay -S onlyoffice-bin
yes | yay -S texlive-full texlive-lang

# Games
yes | sudo pacman -S minetest supertuxkart

# Wine
yes | sudo pacman -S wine wine-mono wine-gecko bottles
yes | yay -S bottles

# Emoji support
yes | sudo pacman -S noto-fonts-emoji

# System monitors
yes | sudo pacman -S plasma-systemmonitor htop
yes | yay -S gotop

# Change shell
chsh -s /usr/bin/fish

# Configs
rm -r ~/.config/fish; mkdir ~/.config/fish; cp confs/config.fish ~/.config/fish
rm -r ~/.config/alacritty/; mkdir ~/.config/alacritty; cp confs/alacritty.yml ~/.config/alacritty

# restart
echo "Press enter to reboot the system now!"
read
reboot
