#===========
#!/bin/sh
fname=$1
exec<$fname
regex='^([a-z]{1,1})([a|e|i|o|u]{1,1})([a-z]{1,4})\.com(.+)'
while read line
do
if [[ "$line" =~ $regex ]];then
echo $line
fi
done
#===========
