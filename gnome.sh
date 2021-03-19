#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc


# Virtual Machine
# sudo pacman -S --noconfirm xf86-video-qxl

# Intel ( DO NOT INSTALL FOR Cinnamon )
# sudo pacman -S --noconfirm xf86-video-intel

# AMD
# sudo pacman -S --noconfirm xf86-video-amdgpu

# Nvidia
# sudo pacman -S --noconfirm nvidia nvidia-utils nvidia-settings


sudo pacman -S --noconfirm xorg gdm gnome gnome-extra firefox gnome-tweaks chrome-gnome-shell arc-gtk-theme arc-icon-theme 

sudo systemctl enable gdm


/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
