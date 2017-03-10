#!/usr/bin/env bash
# Sets up port forwarding with iptables from 8080 to 80
sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080
