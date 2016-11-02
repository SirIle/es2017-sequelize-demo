#!/bin/sh
wget https://get.docker.com/builds/Linux/x86_64/docker-1.11.0.tgz -O /tmp/docker-client.tgz
tar xzf /tmp/docker-client.tgz
sudo ln -s $PWD/docker/docker /usr/local/bin/docker
cd files && unzip ucp-bundle.zip && cd ..
npm update -g npm
npm install && cd services/users && npm install && cd ../..
