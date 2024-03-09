# 1a.netstat -tuln / lsof -i
# 1b.tcp        0      0 0.0.0.0:2000            0.0.0.0:*               LISTEN
#    tcp6       0      0 :::2000                 :::*                    LISTEN
#   node    537 codespace   19u  IPv4  40560      0t0  TCP localhost:36687 (LISTEN)
#   node    537 codespace   23u  IPv4  40613      0t0  TCP localhost:36687->localhost:39238 (ESTABLISHED)
#   node    566 codespace   21u  IPv4  40643      0t0  TCP localhost:36687->localhost:39242 (ESTABLISHED)
# 1c.node js web service

# 2a.systemctl status bind9
# 2b.没有指定本地dns服务，会请求默认dns服务获得响应，制定本但没有启动bind9服务则会超时
# 2c.在 address 下 添加了  www in A 192.168.10.1 表明www.example.com 的ipv4 地址。 同时  在name server 下配置的ns1.example.com表明在本域名下寻找example.com相关的地址
# 2d.dig <domain> @localhost

# 3a.没发现 我直接添加了check 健康模式 看起来都是绿色的，没添加的话应该是灰色、白色
# 3b.roundrobin 轮询 除此之外还有加权轮询、最少连接、动态权重、最快响应时间、IP散列等算法
# 3c.
# listen stats
# bind    0.0.0.0:7001
# mode    http
# stats   enable
# stats   hide-version
# stats   uri /stats
# frontend myfrontend
#     bind *:7000
#     mode http
#     default_backend mybackend
# backend mybackend
#     balance roundrobin
#     server local_server0 127.0.0.1:8080 check
#     server local_server1 127.0.0.1:8081 check
#     server local_server2 127.0.0.1:8082 check
#     server local_server3 127.0.0.1:8083 check
#     server local_server4 127.0.0.1:8084 check
#     server local_server5 127.0.0.1:8085 check
# 3d.后端显示绿色
# 3e.在状态页面后端崩溃服务器显示红色，我这次是0
# 3f.全部崩溃后显示503 service unavailable
 
