#!/bin/bash

hosts=`cat infra/hosts | perl -nle 'm{.*(172.*):} and print $1'`
echo ""
for host in $hosts;do 
echo "Pour ${host}"
MYSQL_PWD=yata mysql -h $host -u yata -e "show databases;"
echo ""
done
