#!/bin/bash
# Program:
#	This script only accepts the flowing parameter: one, two or three.
# History:
# 2014/4/1	houbo	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will print your selection !"
#read -p "input your choice:" choice
#case $choice in 
case $1 in
	"one")
	echo "Your choice is ONE"
	;;

	"TWO")
	echo "Your choice is TWO"
	;;

	*)
	echo "Usage $0 {one|two|three}"
	;;
esac
