#!/bin/bash
echo "Hostname: $(hostname)"
echo "OS Information: $(cat /etc/issue)"
lsb_release -a
sudo lshw -short
