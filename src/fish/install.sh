#!/bin/sh
set -e

echo "Installing software-properties-common"
apt-get -y install software-properties-common

echo "Adding fish-shell PPA"
add-apt-repository ppa:fish-shell/release-3

echo "Updating package list"
apt-get -y update

echo "Updgrading packages"
apt-get -y upgrade

echo "Installing fish-shell"
apt-get -y install fish

echo "Finished setting up Fish shell"