#!/bin/sh

sleep 3
echo "********************************************"
echo "requesting http://$host:$port/update to update the server"
echo "********************************************"
res=`curl http://$host:$port/update`
notfound=`echo $res|grep -c 'Not Found'`
updatesucess=`echo $res|grep -c 'update server success'`

# 不为1 即代表，代码有更新，那么就更新文档，重启服务器
if [ "$notfound" -eq "1" ] then
    git pull origin master
    gitbook build
    echo "no server specified, please start firstly"
    echo "gitbooksuccess"
    break
elif [ "$updatesucess" -eq "1" ] then
    echo $res
else
    echo "if updating doesn't success, please open the url 'http://$host:$port/update' when pushing finishes"
fi
