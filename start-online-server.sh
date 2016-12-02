export NODE_ENV=production
cd `dirname $0`
DIR=`pwd`
echo "Current Dir: $DIR"

gitbook build
sh stop-online-server.sh
rm nohup.out
nohup node $DIR/server.js &
sleep 3
cat nohup.out
