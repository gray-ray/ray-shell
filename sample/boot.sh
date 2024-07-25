#!/bin/sh
#chkconfig: 35 80 90      
#description:开机自动启动的脚本程序
 
echo "设置开机自启"
 
echo "启动完毕"


# 脚本第一行 “#!/bin/sh” 告诉系统使用的shell； 
# 脚本第二行 “#chkconfig: 35 80 90” 表示在3/5运行级别启动，启动序号(S80)，关闭序号(K90)； 
# 脚本第三行 表示的是服务的描述信息

# 注意： 第二行和第三行必写，负责会出现如“服务 boot.sh 不支持 chkconfig”这样的错误。

# 2. 将写好的boot.sh脚本移动到/etc/init.d/目录下

# 3. 给脚本赋可执行权限


# cd /etc/init.d/
# chmod +x boot.sh

# 4. 添加脚本到开机自动启动项目中


# chkconfig --add boot.sh
# chkconfig boot.sh on