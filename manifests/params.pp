class screen::params {

  case $::osfamily
  {
    'redhat':
    {
      #ok
    }
    'Debian':
    {
      #ok
    }
    'Suse':
    {
      #ok
    }
    default: { fail('Unsupported OS!')  }
  }
}
