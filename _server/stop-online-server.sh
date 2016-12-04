#! /bin/sh

export NODE_ENV=production
cd `dirname $0`
cd ..
GITDIR=`pwd`
rm -fr ./.git/hooks/pre-push
ps -x|grep "node $GITDIR/_server/server.js"|awk '{print $1}'|xargs kill -9
