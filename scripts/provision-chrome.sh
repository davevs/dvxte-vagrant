#!/usr/bin/env bash
set -e

echo "Provisioning Chrome..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get -q install -y google-chrome-stable

# install chromedriver
echo "Provisioning Chromedriver..."
mkdir -p /home/vagrant/chromedriver

wget -q -N http://chromedriver.storage.googleapis.com/2.22/chromedriver_linux64.zip -P /home/vagrant/chromedriver
unzip /home/vagrant/chromedriver/chromedriver_linux64.zip -d /home/vagrant/chromedriver
chmod +x /home/vagrant/chromedriver/chromedriver
sudo mv -f /home/vagrant/chromedriver/chromedriver /usr/local/share/chromedriver
sudo ln -sf /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -sf /usr/local/share/chromedriver /usr/bin/chromedriver
sudo chown vagrant:vagrant /home/vagrant/chromedriver
