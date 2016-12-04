#! /bin/sh

export NODE_ENV=production
cd `dirname $0`
DIR=`pwd`
echo "Current Dir: $DIR"
git pull origin master
gitbook build
sh stop-online-server.sh
rm nohup.out
nohup node $DIR/_server/server.js &
sh _server/deployhook.sh
sleep 3
cat nohup.out
