#!/bin/bash/


sed -e 's/ISR变速箱/7/g' gear.txt >1.a
sed -e 's/双离合变速箱(DCT)/4/g' 1.a >2.a
sed -e 's/固定齿比变速箱/8/g' 2.a >3.a
sed -e 's/序列变速箱(AMT)/6/g' 3.a >4.a
sed -e 's/手动变速箱(MT)/1/g' 4.a >5.a
sed -e 's/无级变速箱(CVT)/3/g' 5.a >6.a
sed -e 's/机械式自动变速箱(AMT)/5/g' 6.a >7.a
sed -e 's/自动变速箱(AT)/2/g' 7.a >gear.a

paste -d "," gear.txt gear.a >gear_z1.a
cat gear_z1.a | awk -F, '{if($3!=$8) {print $1","$2","$3","$4","$8} }' > result_gear.txt

rm ./*.a
