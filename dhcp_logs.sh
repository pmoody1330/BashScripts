#!/bin/bash

# Active leases
cat /var/log/dhcpd.log | grep DHCPREQUEST | awk '{ print $11 " : " $12 }' | sort | uniq

# All leases active and expired
cat /var/dhcpd/var/db/dhcpd.leases | grep lease | sort