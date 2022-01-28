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

sudo pacman -S steam discord telegram-desktop

# Utilities
yes | sudo pacman -S fish exa bat neovim tldr lolcat fd tmux sshfs
yes | sudo pacman -S alacritty

# Multimedia
yes | sudo pacman -S kdenlive krita gmic gimp vlc blender audacity

# Development
yes | yay -S visual-studio-code-insiders-bin
yes |  yay -S unityhub-beta

# Games
yes | sudo pacman -S minetest supertuxkart

# Emoji support
yes | sudo pacman -S noto-fonts-emoji

# System monitors
yes | sudo pacman -S plasma-systemmonitor htop
yes | yay -S gotop-bin

# Change shell
chsh -s /usr/bin/fish

# Configs
rm -r ~/.config/fish; mkdir ~/.config/fish; cp confs/config.fish ~/.config/fish
rm -r ~/.config/alacritty/; mkdir ~/.config/alacritty; cp confs/alacritty.yml ~/.config/alacritty

# restart
echo "Press enter to reboot the system now!"
read
reboot
