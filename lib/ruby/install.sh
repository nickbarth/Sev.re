# Ruby Installer
ruby_install()
{
  ruby_version=${1:'1.9.3-p327'}
  dependency_install 'ruby' 'yaml' 'packages'
  source_install "ruby-$ruby_version" \
                 "http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-$ruby_version.tar.gz"
}
