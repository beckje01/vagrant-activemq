node default {
  
  class { 'vagrant':}

  class  { 'java':
    distribution => 'jdk',
    version      => 'latest',
  }

  class { 'activemq':
    stomp_admin             => 'admin',
    stomp_adminpw           => 'Porter01',
  }
}

