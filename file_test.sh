#! /bin/bash

# 文件测试运算符 返回是否是指定的类型 boolean


: <<EOF
-b file    检测文件是否是块设备文件，如果是，则返回 true。
-c file    检测文件是否是字符设备文件，如果是，则返回 true。
-d file    检测文件是否是目录，如果是，则返回 true。
-f file    检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。
-g file    检测文件是否设置了 SGID 位，如果是，则返回 true。
-u file    检测文件是否设置了 SUID 位，如果是，则返回 true。
-k file    检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。
-p file    检测文件是否是有名管道，如果是，则返回 true。
-r file    检测文件是否可读，如果是，则返回 true。
-w file    检测文件是否可写，如果是，则返回 true。
-x file    检测文件是否可执行，如果是，则返回 true。
-s file    检测文件是否为空（文件大小是否大于0），不为空返回 true。
-e file    检测文件（包括目录）是否存在，如果是，则返回 true。
-S file    检测文件 是否是socket文件 true。



file="/root"
if [ -d $file ]
then
    echo "$file is directory!"
else
    echo "$file is not directory!"
fi

EOF


