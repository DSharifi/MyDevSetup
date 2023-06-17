#!/bin/sh
set -e

echo "Installing software-properties-common"
apt-get install software-properties-common

echo "Adding fish-shell PPA"
add-apt-repository ppa:fish-shell/release-3

echo "Updating package list"
apt-get update

echo "Updgrading packages"
apt-get upgrade

echo "Installing fish-shell"
apt-get install fish

echo "Finished setting up Fish shell"