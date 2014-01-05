# params.pp

class perl::params {

  case $osfamily {
    'RedHat': {
      $package_list = [ 'perl', 'perl-libs']
    }
    'Debian': {
      $package_list = ['perl']
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem: ${::operatingsystem}, module ${module_name} only supports osfamily: RedHat and Debian")
    }
  }
}
