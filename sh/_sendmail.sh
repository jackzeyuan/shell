#!/bin/bash
#send a mail  to all
TIME=`date '+%H:%M:%S'`
echo "start @ $TIME"
SUBJECT="=?UTF-8?B?`echo '车问推荐：英国举办报废车撞车大赛'|base64`?="

for Line in `cat ./userEmail/user_8.txt`
#for Line in `cat ./100.txt`
do
TIME=`date '+%H:%M:%S'`
if [ $Line != 'NULL' ]; then
    id=`echo $Line| cut -d'~' -f1`
    mail=`echo $Line| cut -d'~' -f2`
    rrlevel=`echo $Line| cut -d'~' -f3`
    if [ $rrlevel != '-1' ]; then
        if [ `echo $mail |grep "^[a-zA-Z0-9._-]*@[A-Za-z_0-9._-]*\.[a-zA-Z_-]*$"` ]; then
	    gogoc="chewen\&em=$mail\&emId=$id"		
            sed "s/gogoc/$gogoc/g" ./mail_template.html | formail -I "From: system@chewen.com"  -I "MIME-Version:1.0" -I "Content-type:text/html;charset=UTF-8" -I "Subject:$SUBJECT" -I "To:$mail" | /usr/sbin/sendmail -toi
	    if [ $? -eq 0 ]; then
		echo "$id!sent ok! " >> ./mailresult.log
            else
		echo "$id!sent-fail! unkonw error " >> ./mailresult.log
 	    fi
        else
	    echo "$id!sent-fail! no real mail address for: $mail " >> ./mailresult.log
   	fi
    else
 	echo "$id!sent fail! rrlevel equal -1 " >> ./mailresult.log
    fi
    echo "hand $id"
fi 
#sed "s/gogoc/$gogoc/g" ./mail_template.html | formail -I "From: root@chewen.com"  -I "MIME-Version:1.0" -I "Content-type:text/html;charset=UTF-8" -I "Subject:$SUBJECT" -I "To:chenyufeng@chewen.com" | /usr/sbin/sendmail -toi

#cat /home/service/mailscript/active_account.vm|formail -I "From: service" -I "To:$MAIL" -I "MIME-Version:1.0" -I "Content-type:text/html;charset=gb2312" -I "Subject:祝贺你"|/usr/sbin/sendmail -oi $MAIL
#cat mail_template.html | formail -I "From:system@chewen.com" -I "MIME-Version:1.0" -I "Content-type:text/html;charset=UTF-8" -I "Subject:车问精华" | /usr/sbin/sendmail -oi losser_51@126.com
#echo "$TIME--$MAIL sent ok!" >> ./mailtest.log
#sleep 10
done
TIME=`date '+%H:%M:%S'`
echo "end @ $TIME"

