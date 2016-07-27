#!/bin/sh/



cd /home/lion/chewen/git/obd/obd-admin
mvn -U clean package 

cd ./target


zip -r obd-admin.zip ./obd-admin-1.0-SNAPSHOT


scp obd-admin.zip root@10.3.63.18:/data/www/
