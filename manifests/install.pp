# Class tower::install
class tower::install ($server = $tower::params::tower_fqdn, $config = $tower::params::tower_opts, $pkg = $tower::params::pkg) 
inherits tower::params {
  if ($server = $::fqdn) {
    package { ['git', "${pkg}"]: ensure => 'installed' } ->
    exec { 'download tower':
      command  => "$(which git) clone git@github.com:swizzley/puppet-ansible_tower.git /root/ansible-tower-setup-2.1.4",
      require  => Package['git'],
      provider => 'shell',
      unless   => "$(which test) -d /root/ansible-tower-setup-2.1.4"
    } ->
    exec { 'install':
      command  => "./configure && ./setup.sh ${tower_opts}",
      path     => '/root/ansible-tower-setup-2.1.4',
      require  => Package["${pkg}"],
      provider => 'shell',
      unless   => "$(which netstat) -aln |grep 127.0.0.1:5556|grep LISTEN"
    }
  }
}