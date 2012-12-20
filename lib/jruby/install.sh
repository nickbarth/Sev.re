# JRuby Installer
jruby_install()
{
  jruby_version=${1:-'1.7.1'}
  dependency_install 'jruby' 'packages'
  source_install "jruby-${jruby_version}" \
                 "http://jruby.org.s3.amazonaws.com/downloads/$jruby_version/jruby-bin-$jruby_version.tar.gz"
}
