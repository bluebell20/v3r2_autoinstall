#!/bin/bash
temp_pass=`grep -an "temporary password" /var/log/mysqld.log |awk -F 'root@localhost: ' '{print $2}'`

export MYSQL_PWD=${temp_pass}
mysql --connect-expired-password -u root -e 'ALTER USER USER() IDENTIFIED BY "Mysql!23+"'
