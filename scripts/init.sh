#!/bin/sh
cd ~/workspace
wget https://get.docker.com/builds/Linux/x86_64/docker-1.11.0.tgz -O /tmp/docker-client.tgz
tar xzf /tmp/docker-client.tgz
sudo ln -s ~/workspace/docker/docker /usr/local/bin/docker
sudo wget https://github.com/docker/compose/releases/download/1.9.0-rc2/docker-compose-Linux-x86_64 -O /usr/local/bin/docker-compose
sudo chmod a+x /usr/local/bin/docker-compose
cd ~/workspace/files && unzip ucp-bundle.zip && cd ..
npm update -g npm
npm install && cd ~/workspace/services/users && npm install && cd ../..
