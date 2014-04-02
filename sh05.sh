#!/bin/bash
#Program:
#	User input a filename,program will check the flowing:
#	1.)exist?2.) file/directory? 3.) file permissions
#History:
#2014/3/31 houbo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 让使用者输入档名，并且判断使用者是否真的有输入字串？
echo -e "Please input a filename, I will check the filename's type and \
permission. \n\n"
read -p "Input a filename : " filename
test -z $filename && echo "You MUST input a filename." && exit 0

# 2. 判断文件是否存在？若不存在则显示信息并结束脚本
test -z $filename && echo "The filename '$filename' DO NOT exist" && exit 0

# 3. 开始判断文件类型与属性
test -f $filename && filetype="regular file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -r $filename && perm="$perm writeable"
test -x $filename && perm="$perm executable"

# 4. 开始输出资讯！
echo "The filename: $filename is a $filetype"
echo "And the permission are: $perm"
