#!/bin/sh
cd `dirname $0`
CURDIR=`pwd`

# 到达git根目录
cd ../
GITPATH=`pwd`
sleep 3

#  得到服务器地址
host=`cat package.json|grep '_serverHost'|tr -s [:space:]|cut -f 4 -d '"'`
port=`cat package.json|grep '_serverPort'|tr -s [:space:]|cut -f 4 -d '"'`

echo "********************************************"
echo "requesting http://$host:$port/update to update the server"
echo "********************************************"
res=`curl http://$host:$port/update`
notfound=`echo $res|grep -c 'Not Found'`
updatesucess=`echo $res|grep -c 'update server success'`

# 不为1 即代表，代码有更新，那么就更新文档，重启服务器
if [ "$notfound" -eq "1" ]; then
    echo "no server specified, please start firstly"
elif [ "$updatesucess" -eq "1" ]; then
    echo $res
else
    echo "if updating doesn't success, please open the url 'http://$host:$port/update' when pushing finishes"
fi
echo "please type enter to exit"
