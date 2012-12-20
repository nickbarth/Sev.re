# NodeJS Installer
nodejs_install()
{
  nodejs_version=${1:-'v0.8.16'}
  nodejs_target=${2:-'linux-x64'}
  binary_install "node-$nodejs_version-$nodejs_target" \
                 "http://nodejs.org/dist/$nodejs_version/node-$nodejs_version-$nodejs_target.tar.gz"
}
