# Class: tower
#
# This module manages tower
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class tower ($epel = $tower::params::epel, $pkg = $tower::params::pkg) inherits tower::params {
  include tower::license

  if $epel == true {
    case $::major {
      '7'     : { $release = 'http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm' }
      '6'     : { $release = 'http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm' }
      default : { $release = undef }
    }

    exec { 'install epel':
      command  => "$(which curl) -O ${release} && $(which yum) -y localinstall epel-release*.rpm",
      provider => 'shell',
      path     => '/root',
      unless   => '$(which rpm) -qia|$(which grep) epel-release'
    }
  }

  include tower::install
  require tower::install

}