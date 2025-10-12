#!/bin/bash

PACKAGES=(
amd-ucode
bat
bluez
bluez-utils
btop
clang
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
noto-fonts
noto-fonts-cjk
noto-fonts-emoji
noto-fonts-extra
ttf-jetbrains-mono-nerd
woff2-font-awesome
ttf-cascadia-mono-nerd
ttf-ia-writer
nvidia
nvidia-utils
openssh
pacman-contrib
pavucontrol
reflector
ripgrep
slurp
starship
stow
telegram-desktop
tmux
vlc
waybar
wl-clipboard
wofi
xdg-desktop-portal-hyprland
xdg-user-dirs
yazi
zsh
pipewire
pipewire-alsa
pipewire-pulse
pipewire-jack
wireplumber
alsa-utils
sof-firmware
unzip
unrar
p7zip
zip
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
