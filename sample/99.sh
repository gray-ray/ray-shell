#! /bin/bash



# 99 乘法

for i  in $(seq 9)
do 
  for j in $(seq 9)
  do
    echo -n "$i*$j=$((j*j))"
  done
  # echo
done