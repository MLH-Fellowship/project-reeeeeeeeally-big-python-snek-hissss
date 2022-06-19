#!/bin/bash

python3.8 -m venv python3-virtualenv
source python3.8-virtualenv/bin/activate
pip3.8 install -r requirements.txt
flask run --host=0.0.0.0
exit
