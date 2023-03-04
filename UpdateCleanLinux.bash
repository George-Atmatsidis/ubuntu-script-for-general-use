#!/usr/bin/env bash
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt --purge -y autoremove
sudo apt -y autoclean
sudo apt -y clean
sudo apt -y purge $(dpkg -l | awk '/^rc/ { print $2 }')

