#!/bin/bash
set -x
sudo rm -rf master*
sudo rm -rf  wqq*
wget https://github.com/dingboopt/neutron-x/archive/test.zip --no-check-certificate -e use_proxy=yes -e https_proxy=https://d00327060:zxcv13%40%24@proxyhk.huawei.com:8080/
unzip master.zip
cd wqq-master
git init
sudo python setup.py install
cd ..
