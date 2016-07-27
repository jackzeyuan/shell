#!/bin/sh
/data/server/memcached/bin/memcached -d -m 1024m -u root  -c 256 -p 11211 -P /data/server/memcached/11211.pid
