#!/bin/bash

sudo iptables -I INPUT -p tcp --dport 32400 -s 192.168.0.0/26 -j ACCEPT
