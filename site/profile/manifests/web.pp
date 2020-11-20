class profile::web {
  include nginx
  file { '/root/README':
    ensure => present,
    content => $os.family,
  }
}
