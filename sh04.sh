#!/bin/bash
#Program:
#	User input 2 integer numbers;program will cross these two numbers.
#History:
#2014/3/31 houbo	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "You SHOULD input 2 numbers,I will cross them! \n"
read -p "first number: " firstnu
read -p "second number: " secondnu
total=$(($firstnu*$secondnu))
echo -e "\nThe result of $firstnu x $secondnu is ==> $total"

