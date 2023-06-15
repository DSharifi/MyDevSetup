#!/bin/sh
set -e

echo "Installing software-properties-common"
sudo apt-get install software-properties-common

echo "Adding fish-shell PPA"
sudo add-apt-repository ppa:fish-shell/release-3

echo "Updating package list"
sudo apt-get update

echo "Updgrading packages"
sudo apt-get upgrade

echo "Installing fish-shell"
sudo apt-get install fish

echo "Finished setting up Fish shell"