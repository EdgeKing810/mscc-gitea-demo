#!/bin/bash

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip setuptools wheel
pip install -r requirements.txt

ANSIBLE_CONFIG=./ansible.cfg ansible-galaxy collection install -r requirements.yml
