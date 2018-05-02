class screen ($ensure='installed') inherits screen::params {

  if($ensure!='installed')
  {
    $ensure_file='purged'
  }
  else
  {
    $ensure_file = 'present'
  }

  package {'screen':
    ensure => $ensure,
  }

  file {'/etc/screenrc':
    ensure  => $ensure_file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/screenrc.erb"),
    require => Package['screen'],
  }

}
