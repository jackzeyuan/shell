#!/bin/bash
LOGPATH="/data/server/nginx/logs"
DATE=`date --date=yesterday +%Y%m%d`
cd $LOGPATH
mv access.log access.log.$DATE
/data/server/nginx/sbin/nginx -s reload
