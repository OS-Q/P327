#!/bin/bash

#获取最新镜像
sudo docker pull gitlab/gitlab-ce:latest
#build gitlab image
sudo docker build -t  qitas/gitlab ./gitlab/

#docker run image

sudo docker run -itd  \
    -p 443:443  -p 80:80  -p 222:22 \
    --restart always \
    --volume /home/config:/etc/gitlab \
    --volume /home/logs:/var/log/gitlab \
    --volume /home/data:/var/opt/gitlab \
    --name gitlab qitas/gitlab 
