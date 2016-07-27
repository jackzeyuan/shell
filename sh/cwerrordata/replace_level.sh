#!/bin/bash/


sed -e 's/MPV/8/g' level.txt > 2.a
sed -e 's/,SUV/,7/g' 2.a > 3.a
sed -e 's/中型SUV/7/g' 3.a > 4.a
sed -e 's/中型车/4/g' 4.a > 5.a
sed -e 's/中大型SUV/7/g' 5.a > 6.a
sed -e 's/中大型车/5/g' 6.a > 7.a
sed -e 's/低端皮卡/10/g' 7.a > 8.a
sed -e 's/全尺寸SUV/7/g' 8.a > 9.a
sed -e 's/其他/0/g' 9.a > 10.a
sed -e 's/小型车/2/g' 10.a > 11.a
sed -e 's/微卡/12/g' 11.a > 12.a
sed -e 's/微型车/1/g' 12.a > 13.a
sed -e 's/微面/11/g' 13.a > 14.a
sed -e 's/紧凑型SUV/7/g' 14.a > 15.a
sed -e 's/紧凑型车/3/g' 15.a > 16.a
sed -e 's/豪华车/6/g' 16.a > 17.a
sed -e 's/跑车/9/g' 17.a > 18.a
sed -e 's/轻客/13/g' 18.a > 19.a
sed -e 's/高端皮卡/10/g' 19.a > level.a


paste -d "," level.txt level.a >level_z1.a
cat level_z1.a | awk -F, '{if($3!=$8) {print $1","$2","$3","$4","$8} }' > result_level.txt

rm ./*.a

