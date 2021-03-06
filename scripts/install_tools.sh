#!/bin/bash

sudo apt install curl unzip jq --yes
sudo curl -o 1password.zip https://cache.agilebits.com/dist/1P/op/pkg/v0.8.0/op_linux_amd64_v0.8.0.zip
sudo unzip 1password.zip -d /usr/local/bin
sudo rm 1password.zip
sudo chmod +x /usr/local/bin/op

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/loadimpact/deb stable main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install k6
