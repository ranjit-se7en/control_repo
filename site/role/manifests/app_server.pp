class role::app_server {
  include profile::web
  include profile::app
  include profile::base
  file { '/root/README':
    ensure => present,
    content => $os.family,
  }
}
