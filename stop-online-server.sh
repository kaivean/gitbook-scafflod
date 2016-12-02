export NODE_ENV=production
cd `dirname $0`
DIR=`pwd`
ps -x|grep "node $DIR/server.js"|awk '{print $1}'|xargs kill -9
