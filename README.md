# install-frps
一键自动安装frp

```
#!/bin/bash
# author: gfw-breaker

frp_password=admin
frp_token=123456

yum install -y git
git clone https://github.com/gfw-breaker/install-frps.git

# install 
cd install-frps
cat > /tmp/frp_params.txt <<EOF
frp_password=$frp_password
frp_token=$frp_token
EOF

bash install.sh

