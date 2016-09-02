#!/bin/sh/

PROJECT=/home/rd/chewen/git/shop
DEST_IP=10.3.63.15



cd $PROJECT
git pull --rebase

cd $PROJECT/shop-core-server
if [ $? -ne 0 ]
then
    echo "Error in go to project"
    exit 1
fi

mvn prepare-package war:exploded -Dmaven.test.skip
if [ $? -ne 0 ]
then
    echo "Error in mvn "
    exit 1
fi

ssh $DEST_IP "cp -r /data/www/shop/core.shop.com /data/www/shop/core.shop.com.`date +%Y%m%d%H%M%S`"
if [ $? -ne 0 ]
then
    echo "\033[31m error in ssh $DEST_IP to cp file \033[0m"
    exit 1
fi


rsync -rvctz --progress --delete $PROJECT/shop-core-server/target/shop-core-server-1.0-SNAPSHOT/ $DEST_IP:/data/www/shop/core.shop.com/
if [ $? -ne 0 ]
then
    echo "Error in rsync to $DEST_IP"
    exit 1
fi

if [ $# -ne 0 ]
then
    if [ $1 -eq 1 ]
    then
        ssh $DEST_IP "/data/server/resin/bin/httpd.sh restart"
    fi
fi

echo "\033[31m finish deploy to $DEST_IP \033[0m"

