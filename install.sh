#!/bin/bash

# deploy 
mkdir -p /etc/frp/
cp frps.ini /etc/frp/
chmod +x frps; cp frps /usr/bin/
cp frps.service /etc/systemd/system/

# config
source /tmp/frp_params.txt
cat >> /etc/frp/frps.ini << EOF
dashboard_pwd = $frp_password
token = $frp_token
EOF


# start service
systemctl enable frps
systemctl start frps

