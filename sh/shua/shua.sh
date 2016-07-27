#!/bin/sh/ 

#CWURL=http://ask.chewen.com/1956619.html
CWURL=http://ask.chewen.com/686007.html
#CWURL=http://ask.chewen.com/1543.html
#CWURL=http://www.baidu.com/s?wd=%E6%9D%A5%E8%87%AA%E6%B2%B3%E5%8D%97
UAFILE=./ua.txt
PROXYFILE=./IP.txt

#获得随机数返回值，shell函数里算出随机数后，更新该值
function random()
{
   min=$1;
   max=$2-$1;
   num=$(date +%N);
   num=$((10#$num))
   ((retnum=num%max+min));
   
   #进行求余数运算即可
   echo $retnum;
   #这里通过echo 打印出来值，然后获得函数的，stdout就可以获得值
   #还有一种返回，定义全价变量，然后函数改下内容，外面读取
}


function getUA()
{
   total=`cat $UAFILE |wc -l`;
   line=$(($RANDOM%$total))
   #echo $line
   echo `sed -n "${line}p" $UAFILE`

}


function getProxy()
{
   total=`cat $PROXYFILE |wc -l`;
   line=$(($RANDOM%$total))
   #echo $line
   echo `sed -n "${line}p" $PROXYFILE`
}


#UA=$(getUA)
#echo $UA
#PROXY=$(getProxy)
#echo $PROXY



#--proxy-server=192.168.1.120:8080
#--user-agent="Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10"
for i in {1..20};
do 
  #echo $(expr $i \* 4);
  
  UA=$(getUA)
  #echo $UA
  PROXY=$(getProxy)
  #echo $PROXY
  #PROXY="218.108.170.167:82"
  #export http_proxy=$PROXY

  echo "--user-agent=$UA --proxy-server=$PROXY" 
  bash /opt/google/chrome/google-chrome --incognito $CWURL --user-agent="$UA" --proxy-server=$PROXY &
  #bash /opt/google/chrome/google-chrome --incognito $CWURL --user-agent="$UA" &
  echo "goto $i"
  TMP=$(random 60 100);
  echo "SLEEP $TMP sec "
  sleep $TMP
  #echo $(pgrep chrome)
  kill -9 $(pgrep chrome)

done;


