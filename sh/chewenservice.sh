#!/bin/sh/

TOOLS_HOME=/home/lion/chewen/git/chewen_tools


if [ $# -lt 1 ]
then
   echo "$0 1 for service package and install,2  for service deploy, 3 for tools package and install, 4 for tools deploy "
   exit;
fi


echo " go ... go ... go..."

if [ $1 -eq 1 ] 
then
echo "compile chewen"
cd $TOOLS_HOME/chewen-service
mvn clean -U clean package install -Dmaven.test.skip=true
fi


if [ $1 -eq 2 ] 
then
echo "compile chewen"
cd $TOOLS_HOME/chewen-service
mvn  -U clean package deploy -Dmaven.test.skip=true
fi



if [ $1 -eq 3 ] 
then
echo "compile chewen"
cd $TOOLS_HOME/tools-common
mvn clean -U package install -Dmaven.test.skip=true
fi

if [ $1 -eq 4 ] 
then
echo "compile chewen"
cd $TOOLS_HOME/tools-common
mvn  -U clean  package deploy -Dmaven.test.skip=true
fi
