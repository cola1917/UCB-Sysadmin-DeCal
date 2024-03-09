# Encryption and Decryption
# 1.输出Quack
# 2.gpg --import <keyfile> 导入密钥
# 3.gpg --export --armor > keyfile.asc 导出密钥 还可关联邮箱 gpg --export --armor user@example.com > user_key.asc
# 4.gpg --list-keys gpg --list-secret-keys 查看密钥
# 5.需要先导入私钥 gpg --import lab7privkey 然后 解码 gpg --decrypt file2.txt.gpg   输出 woof


# Hashing (Checksums)
# 1.ddbefc9c1d8a8d9195a420a7181352e9  file3.txt  命令 md5sum file3.txt 
# 2.sha1sum file3.txt  输出 680d80838a5ed2bf543c4db83374c2e0003ab4d8  file3.txt

# File Security
# 1.-rw-r--r-- 1 nobody codespace 15 Mar  7 10:15 file4.tx 允许所有人读，只允许拥有者写
# 2.aching flair
# 3.sudo chown codespace:codespace file6.txt 
# 4.sudo chown codespace:codespace file7.txt 本身是只对拥有者只读 chmod 400 file7.txt
# 5.sudo chown root:root file8.txt && sudo chmod 400 file8.txt
# 6.sudo chmod 400 file9.txt && sudo chown codespace file9.txt