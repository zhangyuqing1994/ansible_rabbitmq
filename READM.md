
# 保证网络可用性 可以上网 yum源没问题 支持centos6 centos7系统 otp_src_18.2.1 rabbitmq 3.6.9  

# 可以是root用户 也可以是普通用户 

# 安装前改hosts文件 配置远程主机 用户 密码 (确保用户有sudo 可执行权限)


# 本文安装步骤参考链接

https://www.aliyun.com/jiaocheng/133267.html

# 安装前改host文件 远程执行机器IP root用户密码

# 检测语法 

ansible-playbook -i hosts site.yml --syntax-check

# 安装步骤 在当前目录下执行命令

ansible-playbook -i hosts  site.yml -f 10


# 安装完后默认的用户密码为admin

(1) 新增一个用户

rabbitmqctl  add_user  Username  Password
用户设置为administrator才能远程访问
rabbitmqctl set_user_tags Username administrator     

(2) 删除一个用户

rabbitmqctl  delete_user  Username

(3) 修改用户的密码

rabbitmqctl  change_password  Username  Newpassword

(4) 查看当前用户列表

rabbitmqctl  list_users

