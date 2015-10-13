#!/bin/bash

sudo aptitude -y clean
sudo apt-get autoremove
sudo aptitude -y autoclean

sudo aptitude update
sudo aptitude upgrade

sudo aptitude -y clean
sudo apt-get autoremove
sudo aptitude -y autoclean