#!/bin/bash/


$TEMP_FILE=./temp.a

if [ $# -le 0 ]; then
  echo "userage $0 folderpath"
  exit;
fi


if [ -d $1 ]; then
echo "$1"

touch temp.a
for i in `find  $1 -type f`; do 
    echo "$i"
    cat $i >>temp.a 
done


else
  echo " '$1'  is not a folder"
  exit;
fi
