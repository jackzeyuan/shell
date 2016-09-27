#!/bin/bash

for ((i=0;i<30;i++));  do 
BEGIN=`expr $i \* 30000`
BEGIN=`expr $BEGIN + 1500000`
echo $BEGIN
END=`expr $BEGIN + 30000`
sh ./askurl.sh $BEGIN $END
MIN=`expr ${BEGIN} / 30000`
MAX=`expr ${END} / 30000`
DAT=${MIN}_${MAX}


echo "http://ask.chewen.com/sitemap/terminal/sitemap_${DAT}.xml" >>./url.txt

done ;

