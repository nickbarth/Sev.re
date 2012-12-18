cd /tmp/
curl -L https://github.com/nickbarth/ServerHelper/tarball/master | tar zx
cd `ls /tmp/* -t1d | head -1`
source ./setup.sh $@
