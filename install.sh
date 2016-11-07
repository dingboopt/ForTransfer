#!/bin/bash
set -x
sudo rm -rf master*
sudo rm -rf  wqq*
wget https://github.com/dingboopt/wqq/archive/master.zip --no-check-certificate
unzip master.zip
cd wqq-master
git init
sudo python setup.py install
cd ..
