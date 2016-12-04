#! /bin/sh
cd `dirname $0`
DIR=`pwd`
cd ..

# echo "udpate $DIR"
# 尝试10次
for x in 1 2 3 4 5 6 7 8 9 10
do
    res=`git pull origin master`
    num=`echo $res|grep -c 'Fast-forward'`
    # 不为1 即代表，代码有更新，那么就更新文档，重启服务器
    if [ "$num" -eq "1" ]
      then
          git pull origin master
          gitbook build
          echo $res
          echo "gitbooksuccess"
          break
      else
        echo $res
     fi
     sleep 3
done
