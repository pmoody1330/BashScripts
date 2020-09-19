#!/bin/bash
# Check that the script is being run with root access
[ "$EUID" -eq 0 ] || {
  echo 'Please run with sudo or as root.'
  exit 1
}

# Create docker group (it should already be present)
groupadd docker

# Add the current user to the docker group
gpasswd -a $USER docker

# have the current user see the new group
newgrp docker

# verify that docker commands work without sudo
docker ps
