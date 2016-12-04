#! /bin/sh

cd `dirname $0`
DIR=`pwd`
chmod +x pre-push
mkdir -p $DIR/../.git/hooks
cp pre-push $DIR/../.git/hooks
