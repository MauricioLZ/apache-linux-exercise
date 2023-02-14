#!/bin/bash

apt-get update
apt-get upgrade -y

echo "System updated"

apt-get install apache2 unzip -y

echo "Programs installed"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Downloaded zip"

cp -R * /var/www/html

echo "Files copied to Apache directory"
