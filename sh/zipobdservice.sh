#!/bin/sh/



cd /home/lion/chewen/git/obd/obd-service
mvn -U clean package 

cd ./target


zip -r obd-service.zip ./obd-service-1.0-SNAPSHOT


scp obd-service.zip root@10.3.63.18:/data/www/
