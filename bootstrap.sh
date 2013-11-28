#!/usr/bin/env bash

sudo apt-get update --fix-missing
sudo aptitude safe-upgrade -y
sudo apt-get install -y elinks
sudo apt-get install -y autoconf
sudo apt-get install -y build-essential
sudo apt-get install -y libtool
sudo apt-get install -y pkg-config
sudo apt-get install -y git
sudo apt-get install -y libperl-dev
sudo apt-get install -y screen

echo "alias update='cp -r /vagrant ~/irssi'" >> /home/vagrant/.bashrc
echo "alias remake='make && sudo make install && irssi'" >> /home/vagrant/.bashrc

#set up irssi
echo 'chatnets = { ubanto = { type = "IRC"; }; };' > /home/vagrant/.irssi/config
echo 'servers = ( { address = "192.168.150.129"; chatnet = "ubanto"; port = "6667"; autoconnect = "yes"; } );' >> /home/vagrant/.irssi/config
echo 'channels = ( { name = "#test"; chatnet = "ubanto"; autojoin = "yes"; } );' >> /home/vagrant/.irssi/config
echo 'ignores = ( { mask = "ignoreme"; level = "ALL"; } );' >> /home/vagrant/.irssi/config