# Class tower::license
class tower::license {
  file { '/etc/tower/license':
    ensure  => 'present',
    mode    => '0444',
    owner   => 'root',
    content => template('tower/license.json.erb')
  }
}