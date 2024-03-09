# Getting started with Docker
# 1.默认情况下是root， 但是前面配置了应该是当前用户
# 2.不是，可以docker ps -a 看到之前的 是不同id


# Dockerfiles
# 1.艺术字
# 2.输出 Condense soup, not books!
# 3.
# REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
# my           latest    46552dc548c7   18 minutes ago   111MB
# missile      latest    063d3b1fdfe2   31 minutes ago   552MB


# Dockerizing a Web Server
# docker run -d -p 4002:80 httpd
# 1.
# CONTAINER ID   IMAGE     COMMAND              CREATED         STATUS         PORTS                                   NAMES
# 2ee89f903cc6   httpd     "httpd-foreground"   4 minutes ago   Up 4 minutes   0.0.0.0:4002->80/tcp, :::4002->80/tcp   keen_morse
# f7f04da80aee   httpd     "httpd-foreground"   4 minutes ago   Up 4 minutes   0.0.0.0:4001->80/tcp, :::4001->80/tcp   quizzical_moser
# d50a5e9effe9   httpd     "httpd-foreground"   4 minutes ago   Up 4 minutes   0.0.0.0:4000->80/tcp, :::4000->80/tcp   zen_galois
# 2.因为容器和镜像是多对一，可以有多个容器运行一个镜像，id唯一易于管理
# 3.docker stop 2ee89f903cc6
