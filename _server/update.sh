#! /bin/sh
cd `dirname $0`
DIR=`pwd`
cd ..

# 尝试10次
for x in 1
do
    res=`git pull origin master|grep -c 'Counting objects'`
    # 不为1 即代表，代码有更新，那么就更新文档，重启服务器
    if [ "$res" -eq "1" ]
      then
          #   sh $DIR/start-online-server.sh
            echo "success"
      else
        echo "fail"
      fi
     sleep 3
done
