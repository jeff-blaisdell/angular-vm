#!/bin/bash

# Update apt-get repo.
apt-get update
curl -sL https://deb.nodesource.com/setup | sudo bash -

# Install Dependencies
apt-get -y install build-essential
apt-get -y install ruby1.9.1-dev
apt-get -y install nodejs
apt-get -y install git

gem install compass

npm install -g bower
npm install -g grunt-cli
npm install -g yo
npm install -g generator-angular
npm install -g npm@next

# Node binary conflicts w/ the Amateur Packet Radio Node Program bundled w/ Ubuntu.
# This replaces the APRN bin w/ the Node bin.
# See bug https://github.com/joyent/node/issues/3911
unlink /usr/bin/node
ln -s /usr/bin/nodejs /usr/bin/node
