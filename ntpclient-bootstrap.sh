#!/bin/bash

# Install ntp server
dnf -y install chrony

cp /vagrant/hosts-file /etc/hosts

# enable and start chronyd
systemctl enable --now chronyd

# enable and start firewalld
systemctl enable --now firewalld

chronyc sources
