#!/usr/bin/env bash
# Sets up firewalls
sudo ufw enable
sudo ufw allow 80
sudo ufw allow 8080
sudo ufw allow 443
sudo ufw allow 22
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080
#ufw config found in /etc/ufw/rules.before
