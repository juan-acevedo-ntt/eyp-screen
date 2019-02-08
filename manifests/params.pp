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
      #whatever
    }
    default: { fail('Unsupported OS!')  }
  }
}
