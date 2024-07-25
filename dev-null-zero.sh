#!/bin/sh


: <<EOF
/dev/null  特殊设备文件 ，它丢弃一切写入其中的数据 视为一个黑洞, 它等效于只写文件, 写入其中的所有内容都会消失, 尝试从中读取或输出不会有任何结果，



EOF


 command -v $1
 
if [[ $? -eq 0 ]]; then
    echo "command $1 exist..."
  else
     echo "command $1 not exist..."
fi