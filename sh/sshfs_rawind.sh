#!/bin/bash/


sshfs -o cache=yes,allow_other,reconnect rawind@192.168.1.125:/data/test /data/rawind/test
sshfs -o cache=yes,allow_other,reconnect rawind@192.168.1.125:/home/rawind /data/rawind/home

