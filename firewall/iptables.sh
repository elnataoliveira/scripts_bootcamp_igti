#!/bin/bash
sudo su -
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -i <interface> -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT
#iptables -I DOCKER-USER -i <interface> ! -s <ip>/24 -j ACCEPT
iptables -I DOCKER-USER -i <interface> ! -s <ip>/24 -j DROP
iptables -A INPUT -j DROP