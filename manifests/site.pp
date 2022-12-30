node master.puppet{
 include my_fw
}

node slave1.puppet{
  package { 'httpd':
    ensure => installed,
  }
}

node slave2.puppet{
  package { 'httpd':
    ensure => installed,
  }
}
