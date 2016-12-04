#! /bin/sh

cd `dirname $0`
DIR=`pwd`
chmod +x post-receive
mkdir -p $DIR/../hooks
cp post-receive $DIR/../hooks
