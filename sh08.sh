#!/bin/bash
#Program:
#	Program shows the effect of shift function.
#History:
#2014/3/31	houbo 	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Total parameter number is ==>$#"
echo "Total whole parameter is ==> '$@'"
shift
echo "Total parameter number is ==>$#"
echo "Total whole parameter is ==> '$@'"
shift 3
echo "Total parameter number is ==>$#"
echo "Total whole parameter is ==> '$@'"
