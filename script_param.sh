#!/bin/bash


# 脚本传参

# 是传给脚本的参数个数
echo "number:$#"

# 是脚本本身的名字
echo "scname:$0"

#传递给该shell脚本的第一个参数
echo "first :$1"

# 传递给该shell脚本的第二个参数
echo "second:$2"

# 传给脚本的所有参数的列表
echo "argume:$@"

# 一个单字符串显示所有向脚本传递的参数，与位置变量不同，参数可超过9个
echo "allargume:$*"

#脚本运行的当前进程ID号
echo "pid:$$"




