#! /bin/sh

: <<EOF

  函数 创建、调用

  [ function ] funname [()]

  {

      action;

      [return int;]

  }


  1、可以带 function fun() 定义，也可以直接 fun() 定义,不带任何参数。
  2、参数返回，可以显示加：return 返回，如果不加，将以最后一条命令运行结果，作为返回值。

  3、函数返回值在调用该函数后通过 $? 来获得。

  4、所有函数在使用前必须定义

  5、return 后跟数值 n(0-255) 

  6、调用函数时可以向其传递参数。在函数体内部，通过 $n 的形式来获取参数的值，例如，$1表示第一个参数，$2表示第二个参数...
 
  7、 脚本传参的特殊字符也可以用在函数中

  8、`$10 `不能获取第十个参数，获取第十个参数需要${10}。当n>=10时，需要使用${n}来获取参数

EOF

func (){
  
   echo "这个函数会对输入的两个数字进行相加运算..."
    echo "输入第一个数字: "
    read aNum
    echo "输入第二个数字: "
    read anotherNum
    echo "两个数字分别为 $aNum 和 $anotherNum "
    return $(($aNum+$anotherNum))
}

# func
# echo "输入的两个数字之和为 $?"


func1 () {
  echo $1
  echo $2
  echo $#
}

func1 1 2 4 5
