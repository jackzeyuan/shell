#!/bin/bash/

#find . | grep jad | xargs -i mv {} {}.java
#jar -tf ****.jar

ROOT_FOLDER=/home/rawind/Documents/chewen/

if [ -d "$ROOT_FOLDER" ]; then 
   for i in `find $ROOT_FOLDER`;do
        echo $i |grep -q ".class"
        if [ $? -eq 0 ]
        then
  	   OUTPUT_PATH=${i%/*}
           echo $OUTPUT_PATH
           jad  -d $OUTPUT_PATH $i
        fi
   done
else
  echo " $ROOT_FOLDER not exists"
  exit;
fi
