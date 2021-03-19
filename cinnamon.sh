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


sudo pacman -S --noconfirm xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings cinnamon system-config-printer gnome-keyring blueberry cups gnome-terminal firefox arc-gtk-theme arc-icon-theme

sudo systemctl enable lightdm.service
sudo systemctl enable org.cups.cupsd.service
sudo systemctl enable bluetooth.service

/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
