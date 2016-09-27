#!/bin/sh/



for shname in `find . -type f -name "*.java"`
do 
          echo $shname
          iconv -f gb2312 -t utf8 -c ${shname} > ${shname}.txt
          mv ${shname}.txt ${shname}
done

