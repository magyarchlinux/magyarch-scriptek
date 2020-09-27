#!/usr/bin/env bash

####################################################
echo "Bluetooth-hoz szükséges szoftverek telepítése"
####################################################

list=(
pulseaudio-bluetooth
bluez
bluez-libs
bluez-utils
blueberry
)

sudo pacman -S --noconfirm --needed $list

#######################################
echo "Szervizek bekapcsolása/indítása"
#######################################

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf