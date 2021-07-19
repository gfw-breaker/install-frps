### 一键自动安装frp服务（CentOS7）

#### 脚本：
执行前可以按需修改 frp_password 和 frp_token 变量

```
#!/bin/bash

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

