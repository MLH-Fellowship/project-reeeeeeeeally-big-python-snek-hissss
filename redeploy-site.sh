#!/bin/bash

cd portfolio
git fetch && git reset origin/main --hard
python3.8 -m venv python3-virtualenv
source python3.8-virtualenv/bin/activate
pip3.8 install -r requirements.txt
systemctl restart myportfolio
