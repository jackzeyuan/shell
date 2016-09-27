#!/bin/bash/

#mysqldump -uenvtest -h 10.3.19.75 -P 6611 -pchewen2013 -d chewen cw_question_topic>cw_question_topic.sql
mysqldump -u18dx -h 10.3.22.79 -P 6610 -p18dxadmin chewen cw_question_topic>cw_question_topic.sql
