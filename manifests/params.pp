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
		default: { fail('Unsupported OS!')  }
	}

}
