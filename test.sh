#/bin/sh

xcversion select 8.0
#rm -rf $HOME/.📦/{1,2,3,4}/
export PATH="`dirname $0`/bin:$PATH"
./test/1
./test/2
./test/3 yolo
./test/4
