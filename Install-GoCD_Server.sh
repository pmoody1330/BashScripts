#!/bin/bash

# Check that the script is being run with root access
[ "$EUID" -eq 0 ] || {
  echo 'Please run with sudo or as root.'
  exit 1
}

# add APT repository
echo "deb https://download.gocd.org /" | tee /etc/apt/sources.list.d/gocd.list
curl https://download.gocd.org/GOCD-GPG-KEY.asc | apt-key add -
apt-get update

# install go-server
apt-get install go-server


