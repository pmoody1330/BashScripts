#!/bin/bash
# Check that the script is being run with root access
[ "$EUID" -eq 0 ] || {
  echo 'Please run with sudo or as root.'
  exit 1
}

#remove any installed versions of docker
apt remove docker docker-engine docker.io containerd runc

#update after applications were removed
apt update -y
apt upgrade -y

#prerequisites
apt install -y apt-transport-https ca-certificates curl
apt install -y gnupg-agent software-properties-common

#docker gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

#Key on 9-12-2020 ----  9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
#Verify the key
apt-key fingerprint 0EBFCD88

#add the docker repository
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#update after adding a deb repo
apt update

#install docker and related components
apt install -y docker-ce docker-ce-cli containerd.io

# add docker group to eliminate the need for sudo
groupadd docker
usermod -aG docker $USER
newgrp docker

#validate install
docker version

