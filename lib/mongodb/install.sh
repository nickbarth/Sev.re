# MongoDB Installer
mongodb_install()
{
  mongodb_version=${1:-'2.2.2'}
  source_install "mongodb-linux-x86_64-$mongodb_version" \
                 "http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$mongodb_version.tgz"
}
