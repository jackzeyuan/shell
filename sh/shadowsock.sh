cd /usr/local/bin


#sudo ./sslocal -c client.json -d restart
#sudo ./sslocal -c shennan.json -d restart
sudo ./sslocal -c gqvps.json -d restart


tail -fn200 /var/log/shadowsocks.log
