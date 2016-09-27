#!/bin/bash/


MYSQL_USER=18dx
MYSQL_HOST=10.3.63.137
MYSQL_PORT=6610
MYSQL_PASSWD=18dxadmin
MYSQL_DB=autodata

#EXECUTE_SQL="SELECT CONCAT(c.id, ',', c.name, ',', c.body, ',', b.structure) FROM Car c INNER JOIN  body b ON c.id = b.cid;"


#EXECUTE_SQL="select CONCAT(car.id, ',', car.name,',',  y.name, ',',  m.name) from Car car, years y, carModel m where car.yearsid=y.id and car.modelId=m.id;"
#EXECUTE_SQL="select CONCAT('update cw_news_commnet_9 set create_time=', '\'', comment.create_time, '\'  where id=',  comment.id, ';') from cw_news_comment_9 as comment;"

#EXECUTE_SQL="SELECT CONCAT(c.id, ',', c.name, ',', c.body, ',' ,b.structure) FROM Car c INNER JOIN  body b ON c.id = b.cid;"

#EXECUTE_SQL="SELECT CONCAT(id, '~', email, '~', rrlevel) FROM cw_user where id>0 and id<=100"
#EXECUTE_SQL="SELECT CONCAT(id, '~', name) FROM carModel"
EXECUTE_SQL="SELECT CONCAT(id, '~', name) FROM Car"

RESULT_FILE=sql.txt

mysql -u$MYSQL_USER -h$MYSQL_HOST -P$MYSQL_PORT -p$MYSQL_PASSWD $MYSQL_DB -e "$EXECUTE_SQL"


