#!/usr/bin/env bash
set -e

echo "Setting locale..."
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

sudo kill -9 $(lsof -t /var/lib/dpkg/lock) || true
sudo apt-get update
echo "Installing required packages..."
sudo apt-get install -y -q git python-software-properties build-essential autotools-dev automake pkg-config ant zsh expect



