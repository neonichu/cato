#/bin/sh

xcversion select 7.3.1
rm -rf $HOME/.📦/{1,2,3}/
export PATH="`dirname $0`/bin:$PATH"
./test/1
./test/2
./test/3 yolo
