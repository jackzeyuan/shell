#!/bin/bash/


NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)

red() {
   echo "$RED$*$NORMAL"
}

green() {
   echo  "$GREEN$*$NORMAL"
}

yellow() {
   echo "$YELLOW$*$NORMAL"
}



# return 0 if the string is num, otherwise 1
strIsNum()
{
 local RET=1
 if [ -n "$1" ]; then
     local STR_TEMP=`echo "$1" | sed 's/[0-9]//g'`
     if [ -z "$STR_TEMP" ]; then
         RET=0
     fi
 fi
 echo $RET
}


if [ $# -lt 2 ]
then
   red "Useage:$0 minId maxId (query id and title from ask_question) "
   exit 1;
fi


MINID=$1
MAXID=$2

if [ `strIsNum $MINID` -eq 1 ] ;then
   red "first para must a number"
   exit 1;
fi

if [ `strIsNum $MAXID` -eq 1 ] ;then
   red "first para must a number"
   exit 1;
fi



if [ $MINID -gt $MAXID ]
then
   red "minId can not be greater than maxId "
   exit 1;
fi


OUTPUT_PATH=/tmp
MONGO_HOME=/data/cafe/mongo/mongodb-linux-x86_64-2.4.6/bin

cd $MONGO_HOME


COMMAND=" -h 10.3.63.12 --port 27017 -d question -c ask_question -f _id -q '{\"_id\":{\"\$gte\": min}, \"_id\":{\"\$lt\": max}}' --csv"

COMMAND1=`echo $COMMAND | sed  "s/min/$MINID/g"`
COMMAND2=`echo $COMMAND1 | sed  "s/max/$MAXID/g"`

green $COMMAND2


echo "#!/bin/sh/ \r\n cd $MONGO_HOME \r\n ./mongoexport $COMMAND2" > $OUTPUT_PATH/export.sh

sh $OUTPUT_PATH/export.sh > $OUTPUT_PATH/result.txt

sed -i -e  '1d' $OUTPUT_PATH/result.txt
cat $OUTPUT_PATH/result.txt |awk '{print "http://ask.chewen.com/"$1".html"}'>$OUTPUT_PATH/result1.txt
#sed -i -e "s/,/~/g" $OUTPUT_PATH/result.txt
#sed -i -e "s/\"//g" $OUTPUT_PATH/result.txt

#./mongoexport $COMMAND2 > $OUTPUT_PATH/result.txt


#awk -F":|,|}" '{print $2, $4} ' $OUTPUT_PATH/temp.rs > $OUTPUT_PATH/temp1.rs
#awk -F" |\"" '{print $2,"~",$5} ' $OUTPUT_PATH/temp1.rs > $OUTPUT_PATH/result.txt

MIN=`expr ${MINID} / 30000`
MAX=`expr ${MAXID} / 30000`
DAT=${MIN}_${MAX}

#URLFIL="$OUTPUT_PATH/url.txt"

#if [ ! -f "$myFile" ]; then 
#   echo " rm url.txt file"
#   rm $OUTPUT_PATH/url.txt
#fi


echo "http://ask.chewen.com/sitemap/terminal/sitemap_${DAT}.xml" >>$OUTPUT_PATH/url.txt

echo '<?xml version="1.0" encoding="UTF-8"?>'>$OUTPUT_PATH/sitemap_${DAT}.xml
echo '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">'>>$OUTPUT_PATH/sitemap_${DAT}.xml
cat $OUTPUT_PATH/result1.txt|awk '{print "<url>""\n"\
"<loc>"$1"</loc>""\n"\
"<lastmod>""2014-02-13""</lastmod>""\n"\
"<changefreq>""weekly""</changefreq>""\n"\
"<priority>""1.00""</priority>""\n"\
"</url>"}'>>$OUTPUT_PATH/sitemap_${DAT}.xml
echo '</urlset>'>>$OUTPUT_PATH/sitemap_${DAT}.xml



