class profile::db {
  file { '/root/README':
      ensure => present,
      content => $os.family,
  }

}
