user=root
pawd=shenghuomeihao

baseFolder=/data/backup/database/;
#echo 'baseFolder:'$baseFolder

#filelist=`ls $baseFolder$folder/`
folder=`ls -ltr $baseFolder | tail -n 1 | awk '{print $8}'` 
#echo 'filelist:'$filelist

filelist=`ls $baseFolder$folder`
date >> bat.log
for filename in $filelist
do
  #your-command $filename > ${filename}.new
  #echo $baseFolder$filelist$filename
  sqlFile=$baseFolder$folder/$filename
  $sqlFile >> bat.log
  /data/server/mysql/bin/mysql -u$user -p$pawd < $sqlFile
done
#mysql -u%user% -p%pawd% < /data/backup/database/20120106/chewen.sql
#mysql -u%user% -p%pawd% < /data/backup/database/20120106/chewen_user.sql
#mysql -u%user% -p%pawd% < /data/backup/database/20120106/chewen_task.sql
