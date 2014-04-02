#!/bin/bash
#Program
#	Using netstat and grep to detect WWW,SSH,FTP,and Mail services;
#History:
#2014/4/1	houbo 	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 先作一些告知的动作而已～
echo "Now, I will detect your linux server's services!" 
echo -e "The www,ftp,ssh,mysql,and mail will be detect! \n"

# 2. 开始进行一些测试的工作，并且也输出一些资讯罗！
testing=$(netstat -tuln | grep ":80")
if [ "$testing" != "" ];then
	echo "WWW is runing in your system."
fi

testing=$(netstat -tuln | grep ":22")
if [ "$testing" != "" ];then
	echo "SSH is runing in your system."
fi

testing=$(netstat -tuln | grep ":21")
if [ "$testing" != "" ];then
	echo "FTP is runing in your system."
fi

testing=$(netstat -tuln | grep ":25")
if [ "$testing" != "" ];then
	echo "Mail is runing in your system."
fi

testing=$(netstat -tuln | grep ":3306")
if [ "$testing" != "" ];then
	echo "Mysql is runing in your system."
fi
