#!/bin/bash

apt-get install software-properties-common \
  python-yaml \
  python-jinja2 \
  python-pycurl

apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible

sudo -u $USER ansible-galaxy install angstwad.docker_ubuntu

sudo -u $USER ansible-playbook -i inventory main.yml

sudo -u $USER ansible-galaxy remove angstwad.docker_ubuntu
