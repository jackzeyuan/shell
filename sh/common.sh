cat hosts | xargs -I{} ssh root@{} hostname

cat a b | sort | uniq > c   # c 是a和b的合集

cat a b | sort | uniq -d > c   # c 是a和b的交集

cat a b b | sort | uniq -u > c   # c 是a和b的不同

cat access.log | egrep -o ‘acct_id=[0-9]+’ | cut -d= -f2 | sort | uniq -c | sort -rn
