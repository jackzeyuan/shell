#!/bin/sh/

PROJECT=/home/rd/chewen/git/obd
DEST_IP=10.3.63.16



cd $PROJECT
git pull --rebase

cd $PROJECT/obd-admin
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


rsync -rvctz --progress --delete $PROJECT/obd-admin/target/obd-admin-1.0-SNAPSHOT/ $DEST_IP:/data/www/admin.obd.chewen.com/
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

