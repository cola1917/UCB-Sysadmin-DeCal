# 1.当同时修改了同一行时，就会引发冲突
# 2.因为git无法决定我们需要什么改动，所有当冲突时需要手动介入
# 3.因为fork生成本地版本，更灵活进行修改，且提交pr可以通知到项目管理人员进行审查，流程好
# 4.rsync -av --preserve /path/to/source /path/to/destination  -a递归同步所有文件 -v详细信息， --preserve保留元数据
# 5.A逐个计算修改，对比哈希值