#!/bin/bash

ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "archlinux" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 archlinux.localdomain archlinux" >> /etc/hosts
echo root:password | chpasswd

pacman -S --noconfirm grub efibootmgr networkmanager network-manager-applet avahi wireless_tools dialog wpa_supplicant os-prober mtools dosfstools base-devel linux-headers xdg-user-dirs xdg-utils bluez bluez-utils cups alsa-utils pulseaudio bash-completion rsync acpi acpi_call tlp acpid os-prober ntfs-3g


grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups
systemctl enable avahi-daemon
systemctl enable tlp
systemctl enable acpid

useradd -m divyanshu
echo divyanshu:password | chpasswd

echo "divyanshu ALL=(ALL) ALL" >> /etc/sudoers.d/divyanshu

/bin/echo -e "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"




