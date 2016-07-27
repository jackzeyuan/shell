#!/bin/bash/


# cat level.txt | awk -F, '{print $4}' | sort |uniq
# 通过这个命令查看所有的类型

sed -e 's/73/0/g' body.txt >1.a
sed -e 's/MPV/3/g' 1.a >2.a
sed -e 's/SUV/4/g' 2.a >3.a
sed -e 's/三厢车/2/g' 3.a >4.a
sed -e 's/两厢车/1/g' 4.a >5.a
sed -e 's/客车/5/g' 5.a >6.a
sed -e 's/掀背车/6/g' 6.a >7.a
sed -e 's/旅行车/7/g' 7.a >8.a
sed -e 's/皮卡/8/g' 8.a >9.a
sed -e 's/硬顶敞篷车/9/g' 9.a >10.a
sed -e 's/硬顶跑车/10/g' 10.a >11.a
sed -e 's/货车/11/g' 11.a >12.a
sed -e 's/软顶敞篷车/13/g' 12.a >body.a


paste -d "," body.txt body.a >body_z1.a
cat body_z1.a | awk -F, '{if($3!=$8) {print $1","$2","$3","$4","$8} }' > result_body.txt
#cat body_z2.a | awk -F, '{if($3!=$5) {print $1","$2","$3","$4","$5} }' > body_re.txt

#删除无用文件
rm ./*.a
