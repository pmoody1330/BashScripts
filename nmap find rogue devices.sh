# Service and Version detection -T4 makes it go faster
nmap -sV --allports -T4 10.1.0.0/24

# Check DHCP devices
sudo nmap --script broadcast-dhcp-discover -e bond0

#UPnP
nmap -sV --script=broadcast-upnp-info -T4 10.1.0.0/24

# https://www.redhat.com/sysadmin/finding-rogue-devices