#!/bin/bash

sudo apt-get update

sudo apt install -y python3-pip nginx

pip install --upgrade pip

git clone https://github.com/JenilPadshala/job-rec-sys.git

cd job-rec-sys

pip3 install -r requirements.txt
