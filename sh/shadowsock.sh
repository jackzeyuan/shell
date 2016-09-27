cd /home/rawind/.local/bin
#sudo ./sslocal -c  ./client.json -d start
sudo ./sslocal -c  ./qgclient.json -d start

tail -fn200 /var/log/shadowsocks.log
