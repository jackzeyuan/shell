backup_dir="/data/backup/database"
date_ymd=`date +%Y%m%d`
if [ ! -d ${backup_dir} ]; then
   mkdir ${backup_dir}
fi
if [ ! -d ${backup_dir}/${date_ymd} ]; then
   mkdir ${backup_dir}/${date_ymd}
fi




/data/server/mysql/bin/mysqldump -h10.3.22.79 -P6610 -u18dx -p18dxadmin -B chewen > /${backup_dir}/${date_ymd}/chewen.sql
/data/server/mysql/bin/mysqldump -h10.3.22.79 -P6610 -u18dx -p18dxadmin -B chewen_user > /${backup_dir}/${date_ymd}/chewen_user.sql
/data/server/mysql/bin/mysqldump -h10.3.22.79 -P6610 -u18dx -p18dxadmin -B chewen_task > /${backup_dir}/${date_ymd}/chewen_task.sql
/data/server/mysql/bin/mysqldump -h10.3.22.79 -P6610 -u18dx -p18dxadmin -B autodata > /${backup_dir}/${date_ymd}/autodata.sql
/data/server/mysql/bin/mysqldump -h10.3.22.79 -P6610 -u18dx -p18dxadmin -B bitnami_roller > /${backup_dir}/${date_ymd}/bitnami_roller.sql

#sh /data/server/mysql/bin/batchImport.sh 
