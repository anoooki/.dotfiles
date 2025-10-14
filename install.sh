#!/bin/bash

PACKAGES=(
alsa-utils
amd-ucode
bat
bluez
bluez-utils
btop clang
dunst
fd
feh
firefox
fzf
gammastep
ghostty
git
grim
hyprlock
hyprpaper
imagemagick
lazygit
lib32-nvidia-utils
libnotify
man-db
networkmanager
noto-fonts
noto-fonts-cjk
noto-fonts-emoji
noto-fonts-extra
nvidia
nvidia-utils
obsidian
openssh
p7zip
pacman-contrib
pipewire
pipewire-alsa
pipewire-jack
pipewire-pulse
reflector
ripgrep
slurp
sof-firmware
starship
stow
telegram-desktop
tmux
ttf-jetbrains-mono-nerd
unrar
unzip
vlc
vlc-plugin-ffmpeg
waybar
wireplumber
wl-clipboard
woff2-font-awesome
wofi
xdg-desktop-portal-hyprland
xdg-user-dirs
yazi
zip
zoxide
zsh
	)

echo "Installing pacman packges..."
sudo pacman -Syu --noconfirm

for pkg in "${PACKAGES[@]}"; do
    if ! pacman -Qi "$pkg" &>/dev/null; then
        echo "Installing $pkg..."
        sudo pacman -S --needed --noconfirm "$pkg"
    else
        echo "$pkg is already installed."
    fi
done

echo "All done!"
