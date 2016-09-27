#!/bin/bash
#*/1 * * * * /usr/local/src/killmysqlprocess.sh
backdir="/usr/local/logs/"
logfile="cms_mysql_killprocess_$(date +"%Y%m%d").log"
mysqlbindir="/usr/local/mysql/bin/"
#use commond 'vmstat' get proc num
vmstat > vmstat.tmp
pronum=`awk -F" " '{if (NR==3) print $1}' vmstat.tmp`
rm -f vmstat.tmp
#if pronum less 20, nothing to do.......... exit
if [ $pronum -lt 20 ]; then 
  exit
fi
#it's here more than 20,run kill mysql Lock process
${mysqlbindir}mysql -e "show full processlist" > processlist.tmp
#get Lock mysql process id
awk -F" " '/Locked/{print $1}' processlist.tmp >looplock.tmp
sleep 5
for line in `cat looplock.tmp`
do
  /usr/local/mysql/bin/mysql -e "kill ${line}"
done
rm -f looplock.tmp
#write kill log
echo $(date +"%Y-%m-%d %H:%M:%S") >> ${backdir}${logfile}
cat processlist.tmp >> ${backdir}${logfile}
rm -f processlist.tmp
