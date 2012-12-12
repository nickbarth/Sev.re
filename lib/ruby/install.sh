#!/bin/bash 

# Ruby Installer
ruby_install()
{
  ruby_version=$1
  echo ">> Installing Ruby $ruby_version..."
  dependency_install 'ruby' 'yaml' 'packages'
  source_install 'ruby' \
                 'http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-$ruby_version.tar.gz'
  echo ">> Ruby $ruby_version Installed."
}
