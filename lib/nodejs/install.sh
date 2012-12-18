# NodeJS Installer
nodejs_install()
{
  nodejs_version=${1:'v0.8.16'}
  source_install "node-$nodejs_version" \
                 "http://nodejs.org/dist/nodejs_version/node-$nodejs_version-linux-x64.tar.gz"
}
