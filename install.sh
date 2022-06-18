#!/usr/bin/sh

# Update
yay -Syyu

# Install kernels and headers
yes | sudo pacman -S linux linux-headers # Linux kernel
yes | sudo pacman -S linux-lts linux-lts-header # Linux LTS Kernel

# Nvida driver
yes | sudo pacman -S nvidia-installer-dkms
yes | sudo pacman -S linux-headers
yes | sudo nvidia-installer-dkms

# Graphics card driver
yes | yay -S xp-pen-tablet

# VR stuff
yay -S alvr

# VirtualBox
yes | sudo pacman -S virtualbox virtualbox-guest-iso
sudo modprobe vboxdrv

yes | sudo pacman -S steam spotify lutris
yes | yay -S whalebird-bin # Mastodon
yes | yay -S moderndeck-bin # Twitter
yes | sudo pacman -S discord-canary # Discord
yes | sudo pacman -S element-desktop # Element
yes | sudo pacman -S telegram-desktop # Telegram

# Utilities
yes | sudo pacman -S fish exa bat neovim tldr lolcat fd tmux sshfs # Useful command line utilities
yes | sudo pacman -S alacritty # Alacritty terminal
yes | sudo pacman -S plasma-systemmonitor htop # System monitors
yes | yay -S gotop # Pretty terminal system monitor

# Multimedia
yes | sudo pacman -S kdenlive krita gmic gimp vlc blender audacity inkscpae

# Development
yes | yay -S code-insiders # Code editors
yes |  yay -S unityhub-beta godot-mono-bin # Game engines
yes | sudo pacman -S dotnet-sdk # Language tooling
yes | yay -S texlive-core #texlive-full

# Office programs
yes | sudo pacman -S libreoffice-fresh # Actualy good office program - Libreoffice
yes | yay -S onlyoffice-bin # MS like office program - OnlyOffice
yes | yay -S texlive-full texlive-langextra # Latex support

# FOSS Games
yes | sudo pacman -S minetest # Minetest
yes | sudo pacman -S supertuxkart # Super Tux Kart

# Wine (Windows compatibility)
yes | sudo pacman -S wine wine-mono wine-gecko bottles
yes | yay -S bottles

# Fonts
yes | yay -S ttf-ms-win11-auto # Windows fonts
yes | sudo pacman -S noto-fonts-emoji # Emoji support

# Change shell to fish
chsh -s /usr/bin/fish

# Configs
rm -r ~/.config/fish; mkdir ~/.config/fish; cp confs/config.fish ~/.config/fish # Copy fish config
rm -r ~/.config/alacritty/; mkdir ~/.config/alacritty; cp confs/alacritty.yml ~/.config/alacritty # Copy Alacritty config

# restart
echo "Press enter to reboot the system now!"
read
reboot
