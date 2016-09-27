#!/bin/sh/


jar -tf chewen-service-1.0-SNAPSHOT.jar | grep class | sort > chewen-service.tmp

jar -tf cw-class-1.1.jar | grep class | sort > cw-class.tmp

comm -12 chewen-service.tmp cw-class.tmp > same.result

rm *.tmp



