

#!/usr/bin/expect

sleep 18

###########################################
# 服务器地址（或IP）

set SERVER "yunjie.com"

# 服务器 SSH 端口号

set PORT "22"

# SSH 用户名

set USER "root"

# 密码
set PASSWD "123456"

###########################################

set timeout 60

spawn /usr/bin/ssh -qTfnN -D 7070 -p $PORT $USER@$SERVER

expect {

"*(yes/no)*" { send "yes\r"}

"password:" { send "$PASSWD\r" }

}

expect eof
