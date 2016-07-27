#!/bin/bash/


#WWW_HOME=/home/lion/chewen/git/chewen/chewen
WWW_HOME=/home/lion/chewen/git/chewen/chewen
SERVICE_HOME=/home/lion/chewen/git/chewen_tools/chewen-service

# mv service in web to service project



#mv  $WWW_HOME/src/main/java/com  $SERVICE_HOME/src/main/java/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen
mv  $WWW_HOME/src/main/java/com/chewen/autodata $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/autodata238 $SERVICE_HOME/src/main/java/com/chewen/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/bbs
mv  $WWW_HOME/src/main/java/com/chewen/bbs/service $SERVICE_HOME/src/main/java/com/chewen/bbs/
mv  $WWW_HOME/src/main/java/com/chewen/bbs/BbsReplyUtils.java $SERVICE_HOME/src/main/java/com/chewen/bbs/
mv  $WWW_HOME/src/main/java/com/chewen/bdo $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/bean $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/biz $SERVICE_HOME/src/main/java/com/chewen/

mkdir -p $SERVICE_HOME/src/main/java/com/chewen/carModel/
mv  $WWW_HOME/src/main/java/com/chewen/carModel/service $SERVICE_HOME/src/main/java/com/chewen/carModel/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/changeTopic/
mv  $WWW_HOME/src/main/java/com/chewen/changeTopic/service $SERVICE_HOME/src/main/java/com/chewen/changeTopic/
mv  $WWW_HOME/src/main/java/com/chewen/changeTopic/entity $SERVICE_HOME/src/main/java/com/chewen/changeTopic/
mv  $WWW_HOME/src/main/java/com/chewen/chewen $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/chewen_bbs $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/chewen_user $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/commons $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/dao $SERVICE_HOME/src/main/java/com/chewen/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/datagrab/
mv  $WWW_HOME/src/main/java/com/chewen/datagrab/parser $SERVICE_HOME/src/main/java/com/chewen/datagrab/
mv  $WWW_HOME/src/main/java/com/chewen/datagrab/service $SERVICE_HOME/src/main/java/com/chewen/datagrab/
mv  $WWW_HOME/src/main/java/com/chewen/datagrab/thread $SERVICE_HOME/src/main/java/com/chewen/datagrab/
mv  $WWW_HOME/src/main/java/com/chewen/datagrab/RandomUserinfo.java $SERVICE_HOME/src/main/java/com/chewen/datagrab/

mkdir -p $SERVICE_HOME/src/main/java/com/chewen/dealer/
mv  $WWW_HOME/src/main/java/com/chewen/dealer/admin $SERVICE_HOME/src/main/java/com/chewen/dealer/
#mv  $WWW_HOME/src/main/java/com/chewen/dealer/admin/controller $SERVICE_HOME/src/main/java/com/chewen/dealer/admin/

mkdir -p $SERVICE_HOME/src/main/java/com/chewen/distributor
mv  $WWW_HOME/src/main/java/com/chewen/distributor/bean $SERVICE_HOME/src/main/java/com/chewen/distributor/
mv  $WWW_HOME/src/main/java/com/chewen/distributor/service $SERVICE_HOME/src/main/java/com/chewen/distributor/
mv  $WWW_HOME/src/main/java/com/chewen/distributors/entity $SERVICE_HOME/src/main/java/com/chewen/distributors/
mv  $WWW_HOME/src/main/java/com/chewen/distributors/service $SERVICE_HOME/src/main/java/com/chewen/distributors/
mv  $WWW_HOME/src/main/java/com/chewen/distributors/util $SERVICE_HOME/src/main/java/com/chewen/distributors/
mv  $WWW_HOME/src/main/java/com/chewen/dtbsvr $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/email $SERVICE_HOME/src/main/java/com/chewen/

mkdir -p $SERVICE_HOME/src/main/java/com/chewen/facade
mv  $WWW_HOME/src/main/java/com/chewen/facade/entity $SERVICE_HOME/src/main/java/com/chewen/facade/
mv  $WWW_HOME/src/main/java/com/chewen/facade/service $SERVICE_HOME/src/main/java/com/chewen/facade/
mv  $WWW_HOME/src/main/java/com/chewen/feed $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/filter $SERVICE_HOME/src/main/java/com/chewen/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/hottopic
mv  $WWW_HOME/src/main/java/com/chewen/hottopic/service $SERVICE_HOME/src/main/java/com/chewen/hottopic/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/hotword
mv  $WWW_HOME/src/main/java/com/chewen/hotword/service $SERVICE_HOME/src/main/java/com/chewen/hotword/
mv  $WWW_HOME/src/main/java/com/chewen/hotword/GridDataModel.java $SERVICE_HOME/src/main/java/com/chewen/hotword/
mv  $WWW_HOME/src/main/java/com/chewen/hotword/HotWordTools.java $SERVICE_HOME/src/main/java/com/chewen/hotword/
mv  $WWW_HOME/src/main/java/com/chewen/img $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/logic $SERVICE_HOME/src/main/java/com/chewen/


mkdir -p $SERVICE_HOME/src/main/java/com/chewen/lottery
mv  $WWW_HOME/src/main/java/com/chewen/lottery/bean $SERVICE_HOME/src/main/java/com/chewen/lottery/
mv  $WWW_HOME/src/main/java/com/chewen/lottery/services $SERVICE_HOME/src/main/java/com/chewen/lottery/
mv  $WWW_HOME/src/main/java/com/chewen/lottery/LotteryConstant.java $SERVICE_HOME/src/main/java/com/chewen/lottery
mv  $WWW_HOME/src/main/java/com/chewen/lottery/LotteryUtil.java $SERVICE_HOME/src/main/java/com/chewen/lottery

mkdir -p $SERVICE_HOME/src/main/java/com/chewen/news
mv  $WWW_HOME/src/main/java/com/chewen/news/servives $SERVICE_HOME/src/main/java/com/chewen/news/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/om
mv  $WWW_HOME/src/main/java/com/chewen/om/other $SERVICE_HOME/src/main/java/com/chewen/om/
rm -rf  $WWW_HOME/src/main/java/com/chewen/om
mv  $WWW_HOME/src/main/java/com/chewen/parser $SERVICE_HOME/src/main/java/com/chewen/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/pic
mv  $WWW_HOME/src/main/java/com/chewen/pic/entity $SERVICE_HOME/src/main/java/com/chewen/pic/
mv  $WWW_HOME/src/main/java/com/chewen/pic/service $SERVICE_HOME/src/main/java/com/chewen/pic/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/picget
mv  $WWW_HOME/src/main/java/com/chewen/picget/service $SERVICE_HOME/src/main/java/com/chewen/picget/
mv  $WWW_HOME/src/main/java/com/chewen/platform $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/pojo $SERVICE_HOME/src/main/java/com/chewen/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/question
mv  $WWW_HOME/src/main/java/com/chewen/question/service $SERVICE_HOME/src/main/java/com/chewen/question/
mv  $WWW_HOME/src/main/java/com/chewen/repository  $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/service $SERVICE_HOME/src/main/java/com/chewen/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/sh2013
mv  $WWW_HOME/src/main/java/com/chewen/sh2013/services $SERVICE_HOME/src/main/java/com/chewen/sh2013/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/syspoll
mv  $WWW_HOME/src/main/java/com/chewen/syspoll/dao $SERVICE_HOME/src/main/java/com/chewen/syspoll/
mv  $WWW_HOME/src/main/java/com/chewen/syspoll/model $SERVICE_HOME/src/main/java/com/chewen/syspoll/
mv  $WWW_HOME/src/main/java/com/chewen/syspoll/service $SERVICE_HOME/src/main/java/com/chewen/syspoll/
mv  $WWW_HOME/src/main/java/com/chewen/task $SERVICE_HOME/src/main/java/com/chewen/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/topic
mv  $WWW_HOME/src/main/java/com/chewen/topic/service $SERVICE_HOME/src/main/java/com/chewen/topic/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/toutiao
mv  $WWW_HOME/src/main/java/com/chewen/toutiao/service $SERVICE_HOME/src/main/java/com/chewen/toutiao/
mv  $WWW_HOME/src/main/java/com/chewen/toutiao/ToutiaoPageObj.java $SERVICE_HOME/src/main/java/com/chewen/toutiao/
mv  $WWW_HOME/src/main/java/com/chewen/toutiao/ToutiaoUtils.java $SERVICE_HOME/src/main/java/com/chewen/toutiao/
mkdir -p $SERVICE_HOME/src/main/java/com/chewen/trues
mv  $WWW_HOME/src/main/java/com/chewen/trues/service $SERVICE_HOME/src/main/java/com/chewen/trues/
mv  $WWW_HOME/src/main/java/com/chewen/util $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/util2 $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/web $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/Constants.java $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/CwFeedRecordOpe.java $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/MemcacheConstants.java $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/chewen/SeoInfo.java $SERVICE_HOME/src/main/java/com/chewen/
mv  $WWW_HOME/src/main/java/com/fileUpload $SERVICE_HOME/src/main/java/com/
mv  $WWW_HOME/src/main/java/com/mop $SERVICE_HOME/src/main/java/com/


