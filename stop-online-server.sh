#! /bin/sh

export NODE_ENV=production
cd `dirname $0`
DIR=`pwd`
rm -fr hooks
ps -x|grep "node $DIR/_server/server.js"|awk '{print $1}'|xargs kill -9
