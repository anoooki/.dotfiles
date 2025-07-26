#!/bin/bash

PACKAGES=(
7zip
amd-ucode
bat
bluez
bluez-utils
dunst
fd
feh
firefox
fzf
gammastep
git
grim
hyprlock
hyprpaper
imagemagick
lazygit
lib32-nvidia-utils
libnotify
man-db
neovim
networkmanager
noto-fonts-cjk
noto-fonts-emoji
nvidia
nvidia-utils
openssh
pacman-contrib
pavucontrol
pipewire-pulse
reflector
ripgrep
slurp
starship
stow
telegram-desktop
tmux
ttf-jetbrains-mono-nerd
unzip
vlc
waybar
wl-clipboard
wofi
xdg-desktop-portal-hyprland
xdg-user-dirs
yazi
zsh
	)

echo "Installing pacman packges..."
sudo pacman -Syu --noconfirm

for pkg in "${PACKAGES}"; do
    if ! pacman -Qi "$pkg" &>/dev/null; then
        echo "Installing $pkg..."
        sudo pacman -S --noconfirm "$pkg"
    else
        echo "$pkg is already installed."
    fi
done

echo "All done!"
