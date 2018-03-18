#!/usr/bin/env bash
set -e

echo "Installing MATE desktop"
sudo apt-add-repository ppa:ubuntu-mate-dev/xenial-mate
sudo apt-get update
sudo apt-get install ubuntu-mate-core ubuntu-mate-desktop -y

