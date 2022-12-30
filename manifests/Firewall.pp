  class Firewall {
    Firewall {
      require => undef,
    }

    firewall { '100 accept port 8080 and 8081':
      dport  => [8080, 8081],
      action => accept,
      proto  => 'tcp'
    }

    firewall { '101 forward port 80 to 8080':
      table   => 'nat',
      chain   => 'PREROUTING',
      jump    => 'REDIRECT',
      proto   => 'tcp',
      dport   => 80,
      toports => 8080
    }

    firewall { '101 forward port 81 to 8081':
      table   => 'nat',
      chain   => 'PREROUTING',
      jump    => 'REDIRECT',
      proto   => 'tcp',
      dport   => 81,
      toports => 8081
    }

  }

