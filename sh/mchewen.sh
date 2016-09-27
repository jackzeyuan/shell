#!/bin/bash/

if [ $# -lt 1 ]
then
   echo "$0 1 for complile chewen and restart resin ,2  for compile, 3 for restart resin "
   exit;
fi

echo " go ... go ... go..."

RESINQ=`ps aux |grep resin | grep caocuo | awk '{print $2}'`

#echo $RESIN_Q

RESIN_PID=`expr $RESIN_Q + 1`

#echo $RESIN_PID

if [ $RESIN_PID -gt 1 ]
then
   echo "resin id is $RESIN_PID, and kill it"
   kill -9 $RESIN_ID
   sleep 4
else
    echo " no resin start"
fi




if [ $1 -eq 1 ] 
then
echo "compile chewen"
cd /home/rawind/git/chewen/chewen
mvn clean -U package -Dmaven.test.skip=true
#mvn clean -U compile -Dmaven.test.skip=true

fi


if [ $1 -eq 2 ] 
then
echo "compile chewen"
cd /home/rawind/git/chewen/chewen
#mvn clean compile
mvn clean -U compile -Dmaven.test.skip=true

#cp -r /home/rawind/Documents/chewen/config/resources/* /home/rawind/git/chewen/chewen/target/classes
fi

if [ $? -ne 0 ]
then
  echo " compile failed.."
  exit;
fi


if [ $1 -ne 2 ]; then

echo "copy config file"
#cp -r /home/rawind/Documents/chewen/config/resources/* /home/rawind/git/chewen/chewen/target/chewen/WEB-INF/classes

if [ $? -ne 0 ]
then
  echo " copy config file failed.."
  exit;
fi

fi

if [ $1 -eq 3 ]
then
   cp /home/rawind/git/chewen_tools/chewen-service/target/chewen-service-1.0-SNAPSHOT.jar /home/rawind/git/chewen/chewen/target/chewen/WEB-INF/lib/
fi




if [ $1 -eq 1 ] || [ $1 -eq 3 ]; then

#cd /home/rawind/git/chewen/chewen/target/chewen/WEB-INF/lib
#rm slf4j-api-1.5.2.jar
#rm slf4j-api-1.6.1.jar

echo "------------------ start resin -------------------------"
cd /opt/cafe/resin-pro-3.1.12/bin
sh httpd.sh


fi
