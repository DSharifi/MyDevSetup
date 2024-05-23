#!/bin/sh
set -e

echo "Updating package lists"
apt-get -y update

echo "Installing software-properties-common"
apt-get -y install software-properties-common

echo "Adding fish-shell PPA"
add-apt-repository ppa:fish-shell/release-3

echo "Updating package list"
apt-get -y update

echo "Upgrading packages" 
apt-get -y upgrade

echo "Installing fish-shell"
apt-get -y install fish

echo "Finished installing Fish shell"

if [ ${CONFIG-STARSHIP} ]; then
      echo "Adding starship to config /etc/fish/config.fish"
      echo 'starship init fish | source' >> /etc/fish/config.fish

      echo "Customizing starship to only display Rust version"
      mkdir -p $HOME/.config && touch $HOME/.config/starship.toml

      echo "[buf]" >> $HOME/.config/starship.toml
      echo "disabled = true" >> $HOME/.config/starship.toml
      echo "[python]" >> $HOME/.config/starship.toml
      echo "disabled = true" >> $HOME/.config/starship.toml
      echo "[golang]" >> $HOME/.config/starship.toml
      echo "disabled = true" >> $HOME/.config/starship.toml
      echo "[package]" >> $HOME/.config/starship.toml
      echo "disabled = true" >> $HOME/.config/starship.toml
      
fi
