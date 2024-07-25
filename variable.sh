#!/bin/bash


# 特殊变量常量集合

## 终端输入  `env` 查看当前Shell系统环境变量

## 终端输入  `set` 查看Shell变量(系统环境变量+自定义变量+函数)

# 与windows环境变量PATH功能一样，设置命令的搜索路径，以冒号为分割
echo $PATH

# 当前用户主目录
echo $HOME 

# 当前shell解析器类型 mac /bin/zsh
echo $SHELL


# 显示当前所在路径
echo $PWD

# 显示之前的路径
echo $OLDPWD


# 显示当前主机名
echo $HOSTNAME

#显示主机的架构，是i386、i686、还是x86、x64等：x86_64
echo  $HOSTTYPE

# 查询系统的字符集
echo $LANG

# 本机当前用户
echo $USER

