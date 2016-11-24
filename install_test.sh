#!/bin/bash
set -x
sudo rm -rf test*
sudo rm -rf  networking-wqq-test*
wget https://github.com/dingboopt/networking-wqq/archive/test.zip
unzip test.zip
cd networking-wqq-test
git init
sudo python setup.py install
cd ..
