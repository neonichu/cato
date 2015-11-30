#/bin/sh

xcversion select 7.1
rm -rf $HOME/.📦/1/
export PATH="`dirname $0`/bin:$PATH"
./test/1
