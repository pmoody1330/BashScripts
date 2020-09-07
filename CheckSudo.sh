#!/bin/bash

# Check that the script is being run with root access
[ "$EUID" -eq 0 ] || {
  echo 'Please run with sudo or as root.'
  exit 1
}

