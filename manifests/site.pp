node default {

}

node 'master.puppet.vm' {
  #include role::master_server
  
}

node /^web/ {
  include role::app_server
  file { '/root/README':
    ensure => present,
    content => $os.family,
  }
}

node /^db/ {
    include role::db_server
    file { '/root/README':
    ensure => present,
    content => $os.family,
  }
}
