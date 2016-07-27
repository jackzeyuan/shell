#!/bin/sh/


PROJECT_HOME=/home/rd/chewen/git/obd


cd $PROJECT_HOME
git pull --rebase

cd $PROJECT_HOME/obd-model
mvn install -Dmaven.test.skip

cd $PROJECT_HOME/obd-service-proxy
mvn install -Dmaven.test.skip


cd $PROJECT_HOME/obd-service-proxy
mvn install -Dmaven.test.skip


cd $PROJECT_HOME/chewen-all
mvn install -Dmaven.test.skip
chewen-all
