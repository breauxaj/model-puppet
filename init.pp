node default {
  case $::operatingsystem {
    'Amazon': {
      $dependencies = [ 'gcc', 'ruby20-devel' ]

      package { 'io-console':
        ensure   => 'latest',
        provider => 'gem'
      }

      package { $dependencies:
        ensure   => 'latest'
      }
    }
    'CentOS', 'RedHat': {
      $dependencies = [ 'redhat-lsb', 'ruby-devel' ]

      package { $dependencies:
        ensure   => 'latest'
      }
    }
    'Debian': {
      $dependencies = [ 'lsb-release', 'ruby-dev' ]

      package { $dependencies:
        ensure   => 'latest'
      }
    }
    'OracleLinux': {
      $dependencies = [ 'redhat-lsb' ]

      package { $dependencies:
        ensure   => 'latest'
      }
    }
    default: { }
  }
}