#!/bin/bash

sudo apt-get update -y
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y
sudo apt-get install git -y
sudo su
cd /
sudo git clone https://github.com/kamal24111991/nginxrole.git
sudo ansible-playbook nginxrole/main.yml
