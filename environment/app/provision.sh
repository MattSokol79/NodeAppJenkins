#!/bin/bash

# Update the sources list
sudo apt-get update -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

# Install nginx
sudo apt-get install nginx -y

sudo systemctl restart nginx.service

# DB HOST write to the .bashrc our envrionment variable
echo 'export DB_HOST=192.168.10.200' >> ~/.bashrc

cd /home/ubuntu/app

sudo pm2 start app.js --update-env
