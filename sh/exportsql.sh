#!/bin/bash/


MYSQL_USER=envtest
MYSQL_HOST=10.3.19.75
MYSQL_PORT=6611
MYSQL_PASSWD=chewen2013
MYSQL_DB=autodata

EXECUTE_SQL="SELECT CONCAT(c.id, ',', c.name, ',', c.body, ',', b.structure) FROM Car c INNER JOIN  body b ON c.id = b.cid;"

#EXECUTE_SQL="SELECT CONCAT(c.id, ',', c.name, ',', c.body, ',' ,b.structure) FROM Car c INNER JOIN  body b ON c.id = b.cid;"

#EXECUTE_SQL="SELECT CONCAT(c.id, ',', c.name, ',', c.tran, ',' ,b.gearstyle) FROM Car c INNER JOIN  gear b ON c.id = b.cid;"

RESULT_FILE=sql.txt

mysql -u$MYSQL_USER -h$MYSQL_HOST -P$MYSQL_PORT -p$MYSQL_PASSWD $MYSQL_DB -e "$EXECUTE_SQL"
