#! /bin/sh

export NODE_ENV=production
cd `dirname $0`
cd ..
GITDIR=`pwd`
echo "Current Dir: $GITDIR"
git pull origin master
# gitbook build
sh stop-online-server.sh
rm nohup.out
nohup node $GITDIR/_server/server.js &
sh ./deployhook.sh
sleep 3
cat nohup.out
