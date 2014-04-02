#!/bin/bash
#Program:
#	This program show the user's choice
#History:
#2014/3/31	houbo First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input (Y/N):" yn
#[ "$yn" == "Y" -o "$yn" == "y" ] && echo "OK,continue" && exit 0
if [ "$yn" == "Y" ] || [ "$yn" == "y" ];then
	echo "OK,continue"
	exit 0
fi

#[ "$yn" == "N" -o "$yn" == "n" ] && echo "Oh,interrupt" && exit 0
if [ "$yn" == "N" ] || [ "$yn" == "n" ];then
	echo "Oh,interrupt"
	exit 0
fi
echo "I don't know what your choice is" && exit 0
