#!/usr/bin/sh

# Update
yay -Syyu

# Install kernels and headers
sudo pacman -S linux linux-headers --noconfirm # Linux kernel
sudo pacman -S linux-lts linux-lts-headers --noconfirm # Linux LTS Kernel   

# Nvida driver
sudo pacman -S nvidia-installer-dkms --noconfirm
sudo nvidia-installer-dkms --noconfirm

# Addons for KDE
sudo pacman -S kdeplasma-addons --noconfirm

# Latte dock
sudo pacman -S --noconfirm latte-dock

# Graphics tablet driver for XP Pen
yay -S xp-pen-tablet --noconfirm

# VR - Oculus Support
yay -S alvr --noconfirm

# Games
sudo pacman -S steam --noconfirm
sudo pacman -S lutris --noconfirm

# Services
yay -S spotify spotify-adblock --noconfirm

# Social media
yay -S whalebird-bin --noconfirm # Mastodon
yay -S moderndeck-bin --noconfirm # Twitter
sudo pacman -S discord-canary --noconfirm # Discord
yay -S discord-canary-update-skip-git
sudo pacman -S element-desktop --noconfirm # Element
sudo pacman -S telegram-desktop --noconfirm # Telegram

# Utilities
sudo pacman -S --noconfirm fish exa bat neovim tldr lolcat fd tmux sshfs ripgrep # Useful command line utilities
sudo pacman -S --noconfirm alacritty # Alacritty terminal
sudo pacman -S --noconfirm plasma-systemmonitor htop procs # System monitors
yay -S --noconfirm gotop-bin # Pretty terminal system monitor
yay -S --noconfirm timeshift-bin # System backup
yay -S --noconfirm pfetch # Neofetch replacement
yay -S --noconfirm tor-browser # Tor Browser

# Multimedia
sudo pacman -S --noconfirm kdenlive # Video editor
sudo pacman -S --noconfirm krita gmic # Krita image editor and digital art
sudo pacman -S --noconfirm gimp # Image editor
sudo pacman -S --noconfirm vlc # Video player
sudo pacman -S jellyfin-web jellyfin-server # Jellyfin
sudo pacman -S --noconfirm blender # Modelling program
sudo pacman -S --noconfirm audacity # Audio recording and editing program
sudo pacman -S --noconfirm inkscpae # Vector program

# Development
yay -S --noconfirm code-insiders # Code editors
yay -S --noconfirm unityhub-beta godot-mono-bin # Game engines
sudo pacman -S --noconfirm dotnet-sdk # Language tooling
yay -S --noconfirm tokei

# Office programs
sudo pacman -S --noconfirm libreoffice-fresh # Actualy good office program - Libreoffice
yay -S --noconfirm onlyoffice-bin # MS like office program for quickly editing docs - OnlyOffice
yay -S --noconfirm typora-free

# FOSS Games
sudo pacman -S --noconfirm minetest # Minetest
sudo pacman -S --noconfirm supertuxkart # Super Tux Kart

# Wine (Windows compatibility)
sudo pacman -S --noconfirm wine wine-mono wine-gecko
yay -S --noconfirm bottles

# Fonts
yay -S --noconfirm ttf-ms-win11-auto # Windows fonts
sudo pacman -S --noconfirm noto-fonts-emoji # Emoji support

# Change shell to fish
chsh -s /usr/bin/fish

# Configs
rm -r ~/.config/fish; mkdir ~/.config/fish; cp confs/config.fish ~/.config/fish # Copy fish config
rm -r ~/.config/alacritty/; mkdir ~/.config/alacritty; cp confs/alacritty.toml ~/.config/alacritty # Copy Alacritty config

# restart
echo "Press enter to reboot the system now!"
read
reboot
