#!/bin/sh
cd $1
if ! [ -e tmp ] ;then
  mkdir tmp
fi
chmod 777 tmp

bin/mysqld --port=3306 --socket=/goinfre/myang/php/mamp/mysql/tmp/mysql.sock  --datadir=/goinfre/myang/php/mamp/mysql/data --pid-file=/goinfre/myang/php/mamp/mysql/data/mysqld.pid --initialize-insecure > /dev/null

if [ `uname -s` = "SunOS" ]; then
    U=`id|sed -e s/uid=//g -e s/\(.*//g`
else
    U=`id -u`
fi

if [ $U = 0 ]; then
   chown -R root .
   chgrp -R root .

   # External data directory - T3532
   cd /goinfre/myang/php/mamp/mysql/data
   chown -R mysql .
   chgrp -R root .
   cd $1
fi



/goinfre/myang/php/mamp/mysql/scripts/ctl.sh start mysql > /dev/null
sleep 10
bin/mysql -S /goinfre/myang/php/mamp/mysql/tmp/mysql.sock -u root -e "DELETE FROM mysql.user WHERE User='';"
bin/mysql -S /goinfre/myang/php/mamp/mysql/tmp/mysql.sock -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$2';"
