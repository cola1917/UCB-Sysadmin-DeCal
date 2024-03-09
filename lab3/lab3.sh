# part 1 编译、打包与安装
# 准备步骤
# gcc --version
# sudo gem install fpm
# fpm
# git clone https://github.com/0xcf/decal-labs.git

# part one
# 编译 成 -o 指定的文件名
# gcc hellopenguin.c -o hellopenguin
# 移动到约定位置，打包可以直接找到
# mkdir -p packpenguin/usr/bin
# mv hellopenguin packpenguin/usr/bin/
# 打包, -s 指定输入类型是dir, -t 指定输出deb文件， -n 包名 -v版本号 -C 输入文件夹名
# fpm -s dir -t deb -n hellopenguin -v 1.0~ocf1 -C packpenguin
# 安装
# sudo dpkg -i ./hellopenguin_1.0~ocf1_amd64.deb
# run in everywhere
# hellopenguin


# part two
# 解决包依赖问题
# 按照part one  打包安装ocfdocs  后正常安装 ocfspy
# 打包到usr/share 后不能全局运行了， 除非加上路径 或者 在PATH中加入/usr/share
# 因为运行时在PATH的路径中挨个查找
# 缺失的包叫ocfdocs， 输出的密码是 Sinkhole


# part three
# 选择 tmux
# apt download tmux
# sudo apt install atool
# aunpack tmux_3.0a-2ubuntu0.4_amd64.deb
# 1.tmux
# 2.DEBIAN/control 可以找到depends
# 3.DEBIAN 是除了usr以外的文件夹 里面有 版本控制文件、包文件md5校验、安装卸载脚本、预安装卸载脚本
# 4.了解到原来man文件是包额外添加过去的

