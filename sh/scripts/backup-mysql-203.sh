#!/bin/bash

Today=`date +%Y%m%d`
if [ ! -d /data/backup/database ]
then mkdir -p /data/backup
fi

cd /data/backup/database
mkdir $Today
cd $Today

/data/server/mysql/bin/mysql -uroot -p'shenghuomeihao' -e "show databases;"|egrep -v "mysql|test|information_schema|Database" > databases.list
for D in `cat databases.list`
do
/data/server/mysql/bin/mysqldump -uroot -p'shenghuomeihao' $D > $Today.$D.sql

done

cd /data/backup/database

tar zcvf $Today.tar.gz $Today

scp $Today.tar.gz 10.3.19.238:/data/backup/database/
rm -rf $Today
