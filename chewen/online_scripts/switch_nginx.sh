sed -i 's/server 10.3.63.135:8081/#server 10.3.63.135:8081/g' *.conf
/data/server/nginx/sbin/nginx -s reload
grep '10.3.63.135' /data/server/nginx/conf/vhost/*.conf --color
sed -i 's/#server 10.3.63.135:8081/server 10.3.63.135:8081/g' *.conf
/data/server/nginx/sbin/nginx -s reload
grep '10.3.63.135' /data/server/nginx/conf/vhost/*.conf --color

sed -i 's/server 10.3.63.204:8088/#server 10.3.63.204:8088/g' *.conf
/data/server/nginx/sbin/nginx -s reload
grep '10.3.63.204' /data/server/nginx/conf/vhost/*.conf --color
sed -i 's/#server 10.3.63.204:8088/server 10.3.63.204:8088/g' *.conf
/data/server/nginx/sbin/nginx -s reload
grep '10.3.63.204' /data/server/nginx/conf/vhost/*.conf --color

sed -i 's/server 10.3.63.205:8088/#server 10.3.63.205:8088/g' *.conf
/data/server/nginx/sbin/nginx -s reload
grep '10.3.63.205' /data/server/nginx/conf/vhost/*.conf --color
sed -i 's/#server 10.3.63.205:8088/server 10.3.63.205:8088/g' *.conf
/data/server/nginx/sbin/nginx -s reload
grep '10.3.63.205' /data/server/nginx/conf/vhost/*.conf --color

