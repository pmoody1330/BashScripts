#!/bin/bash

# Check that the script is being run with root access
[ "$EUID" -eq 0 ] || {
  echo 'Please run with sudo or as root.'
  exit 1
}

# install SSH
apt install ssh

# enable SSH
systemctl enable --now ssh

# verify it is running
systemctl status ssh

echo "If you can not SSH in check that port 22 is open and that root login is allowed."
