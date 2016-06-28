#!/bin/sh/


for pidInfo in `ps -ef|grep 'java'|grep 'obddatadeal'|awk '{print $2",wokerId="$(NF-1)}'`; do
    pid=`echo $pidInfo |awk -F',' '{print $1}i'`
    TMP=`jstat -gcutil $pid`
    GCUTIL=`echo $TMP|awk '{print "oldUsedPercent="$14"%, permUsedPercent="$15"%, fullGCcount="$18}'`
    jmap -histo $pid > _test._
    TMP=`cat _test._| head -n 10| grep "1:\|2:\|3:\|4:"`
    JMAP=`echo $TMP|awk '{print "kind/instance/sizebytes FIST="$4"/"$2"/"$3", SEC="$8"/"$6"/"$7",THIRD="$12"/"$10"/"$11}'`
    echo -e "\033[31m processId=${pidInfo}  \033[0m $GCUTIL"
    echo $JMAP
    echo -e  '' 
    #echo -e "\033[31m ---------------------------------------------------------------------------------------------- \033[0m"
done
