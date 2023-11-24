# 使用 ubuntu:22.04 作为基础镜像

from ubuntu:22.04

# 安装 Shellinabox
run apt-get && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 设置root密码
run echo 'root:root' | chpasswd

# 暴露 22 端口
expose 22

# 启动 shellinabox
cmd ["/usr/bin/shellinaboxd","-t","-s","/:LOGIN"]
