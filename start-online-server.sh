export NODE_ENV=production
cd `dirname $0`
DIR=`pwd`
echo "Current Dir: $DIR"

gitbook build
sh stop-online-server.sh
nohup node $DIR/server.js &
echo 'Listening on port 8050. Open up http://localhost:8050/ in your browser. '
