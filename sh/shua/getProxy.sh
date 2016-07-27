#!/bin/sh/

mkdir -p ./tmp/


CURR=$(cd "$(dirname "$0")"; pwd)

PROHTML="./pro.html"
PROTMP="./pro.tmp"
PROSPLIT="./pro.split"
PROLST="./pro.lst"
PROURL="http://www.qv6.net/tiqu.php?dq=%C8%AB%B9%FA&sl=100&dk=18186&kt=&xl=%C8%AB%B2%BF&tj=%CC%E1+%C8%A1"


function gethtml()
{
   _file=$1;
   _url=$2;
   `wget -nv -O ${_file} ${_url}`
}



function getProxies()
{

cat $PROHTML | tr -d '\r' > $PROTMP
sed -e "s/<br>/\n/g" ${PROTMP} |grep "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}:[0-9]\{1,7\}" > ${PROLST}
#cat ${PROSPLIT} | grep "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}:[0-9]\{1,7\}" > ${PROLST}

}



gethtml $PROHTML $PROURL

getProxies

