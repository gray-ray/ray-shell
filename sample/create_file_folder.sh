#!/bin/bash

echo "创建文件、文件夹"

options=('file' 'folder' 'quit')

PS3="请选择类型: "

file_type="${options[0]}"

current_dic=$(pwd)

select opt in "${options[@]}"; do
  case $REPLY in
  1)
    file_type=$opt
    break
    ;;
  2)
    file_type=$opt
    break
    ;;
  3)
    echo "退出程序"
    break
    ;;
  *) echo '无效选项' ;;
  esac
done

#default_folder=""

if [ "$file_type" = "${options[0]}" ]; then

  read -p "请输入文件夹名称: " folder
  # 设置默认值
  #folder="${folder:-$default_folder}"

  # 提示用户输入文件名
  read -p "请输入文件名（不含扩展名）: " filename

  # 检查是否提供了文件名
  while [ -z "$filename" ]; do
    echo "文件名不能为空，请重新输入。"
    read -p "请输入文件名（不含扩展名）: " filename
  done

  # 提示用户输入文件后缀名
  read -p "请输入文件扩展名 : " extension

  # 循环等待用户输入，直到不为空为止
  while [ -z "$extension" ]; do
    echo "文件扩展名不能为空，请重新输入。"
    read -p "请输入文件扩展名 :  " extension
  done

  # 创建文件并将用户输入的文件名和后缀名拼接起来

  if [ -z "$folder" ]; then
    touch "$current_dic/${filename}.${extension}"
  else
    if [ -d "$current_dic/$folder" ]; then
      touch "$current_dic/${folder}/${filename}.${extension}"
    else
      mkdir "$current_dic/$folder"
    fi
    touch "$current_dic/${folder}/${filename}.${extension}"
  fi

  echo "文件创建完成: ${folder}/${filename}.${extension}"

elif [ "$file_type" = "${options[1]}" ]; then
  read -p "请输入文件夹名称: " folder

  while [ -z "$folder" ]; do
    echo "文件夹名称不能为空，请重新输入。"
    read -p "请输入文件夹名称（不含扩展名）: " folder
  done

  if [ -d "$current_dic/$folder" ]; then
    echo "文件夹存在"
  else
    mkdir "$current_dic/$folder"
  fi

fi
