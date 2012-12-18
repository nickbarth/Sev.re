# MongoDB Installer
mongodb_install()
{
  mongodb_version=${1:'linux-x86_64-2.2.2' }
  source_install "mongodb-$mongodb_version" \
                 "http://fastdl.mongodb.org/linux/mongodb-$mongodb_version.tgz"
}
