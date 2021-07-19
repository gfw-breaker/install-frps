#!/bin/bash

pkg=https://github.com/fatedier/frp/releases/download/v0.37.0/frp_0.37.0_linux_amd64.tar.gz


# set config
cd /root/install-frps
mkdir -p /etc/frp/
cp frps.ini /etc/frp/

source /tmp/frp_params.txt
cat >> /etc/frp/frps.ini << EOF
dashboard_pwd = $frp_password
token = $frp_token
EOF

# deploy binary
cd /tmp
wget $pkg
tar xvf frp*.gz
cp frp*/frps /usr/bin/
cp frp*/systemd/frps.service /etc/systemd/system


# start service
systemctl enable frps
systemctl start frps

