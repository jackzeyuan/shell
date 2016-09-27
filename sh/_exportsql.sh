#!/bin/bash/


MYSQL_USER=18dx
MYSQL_HOST=10.3.63.11
MYSQL_PORT=6610
MYSQL_PASSWD=18dxadmin
MYSQL_DB=chewen

#EXECUTE_SQL="SELECT CONCAT(c.id, ',', c.name, ',', c.body, ',', b.structure) FROM Car c INNER JOIN  body b ON c.id = b.cid;"

#EXECUTE_SQL="SELECT CONCAT(c.id, ',', c.name, ',', c.level, ',' ,b.type) FROM Car c INNER JOIN  baseParameter b ON c.id = b.cid;"

#EXECUTE_SQL="SELECT CONCAT(c.id, ',', c.name, ',', c.tran, ',' ,b.gearstyle) FROM Car c INNER JOIN  gear b ON c.id = b.cid;"

#EXECUTE_SQL="select modelId, count(*) as nu  from (select  modelId , body from Car group by modelId, body ) as a group by a.modelId having nu >1;"

#EXECUTE_SQL="select modelId , count(*) as nu  from (select  modelId, level from Car group by modelId, level) as a group by a.modelId having nu >1;"

#EXECUTE_SQL="select m.id, m.cartype, b.type, c.id from Car c, baseParameter b, carModel m where c.id=b.cid and c.modelId=m.id and m.carType<>b.type;"

#EXECUTE_SQL="show processlist;"

#EXECUTE_SQL="select name from cw_topic;"

EXECUTE_SQL="select CONCAT(name, '~', tel, '~', email, '~', gender, '~', province, '~', city, '~', dealer) from cw_zt_xmdo_sjbm  where create_time >='2015-04-02 00:00:00';"

#RESULT_FILE=sql.txt

mysql -u$MYSQL_USER -h$MYSQL_HOST -P$MYSQL_PORT -p$MYSQL_PASSWD $MYSQL_DB -e "$EXECUTE_SQL"


#"/usr/local/mysql/bin/mysql -uyejr -pyejr db_name < db_name.sql"

#mysqldump -u$MYSQL_USER -h$MYSQL_HOST -P$MYSQL_PORT -p$MYSQL_PASSWD $MYSQL_DB
#mysql -u$MYSQL_USER -h$MYSQL_HOST -P$MYSQL_PORT -p$MYSQL_PASSWD $MYSQL_DB
