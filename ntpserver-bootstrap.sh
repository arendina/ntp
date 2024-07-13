#!/bin/bash

# Install ntp server
dnf -y install chrony

# Allow only clients coming from this network to update their time server
echo "allow 192.168.56.0/24" >> /etc/chrony.conf

# enable and start chronyd
systemctl enable --now chronyd

# enable and start firewalld
systemctl enable --now firewalld

# Add NTP service
firewall-cmd --add-service=ntp
firewall-cmd --runtime-to-permanent

chronyc sources
