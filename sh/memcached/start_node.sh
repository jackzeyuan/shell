#/bin/sh/

/data/server/memcached/bin/memcached -d -m 2048m -u root -c 1024  -p 11213 -P /data/server/memcached/11213.pid
/data/server/memcached/bin/memcached -d -m 2048m -u root -c 1024  -p 11214 -P /data/server/memcached/11214.pid

