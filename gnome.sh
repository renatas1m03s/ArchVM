#!/bin/bash

yay -Sy --needed --noconfirm wireplumber pipewire-alsa pipewire-pulse lib32-pipewire network-manager-applet

yay Sy --needed --noconfirm gdm xorg-xwayland xorg-xlsclients glfw-wayland

yay -Sy --needed --noconfirm gnome gnome-tweaks gnome-extension gnome-browser-connector gnome-shell-extensions qt5-styleplugins breeze

yay -Sy --needed --noconfirm nautilus-sendto gnome-nettool gnome-usage gnome-multi-writer adwaita-icon-theme xdg-user-dirs-gtk fwupd arc-gtk-theme

yay -Sy --needed --noconfirm inetutils dnsutils python-pip conky okular openconnect networkmanager-openconnect ffmpeg vlc

yay -Sy --needed --noconfirm neofetch openvpn google-chrome update-grub 

yay -S --needed  --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji

sudo systemctl enable gdm.service
