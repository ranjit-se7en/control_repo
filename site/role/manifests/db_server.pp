class role::db_server {
  include profile::base
  include profile::db
  file { '/root/README':
    ensure => present,
    content => $os.family,
  }
}

