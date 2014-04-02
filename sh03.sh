#!/bin/bash
#Program:
#	Program creates three files,which named by usrer's input
#	and date command.
#History:
#2014/3/31 houbo	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:usr/local/sbin:~/bin
export PATH
# 1. 让使用者输入文件名称，并取得 fileuser 这个变量；
echo -e "I will use 'touch' command to create 3 files."
read -p "Please input your filename: " fileuser

# 2. 为了避免使用者随意按 Enter ，利用变量功能分析档名是否有配置？
filename=${fileuser:-"filename"}

# 3. 开始利用 date 命令来取得所需要的档名了；
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

# 4. 将档名创建吧！
touch "$file1"
touch "$file2"
touch "$file3"
