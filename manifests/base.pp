node default {
  class  { 'java':
    distribution => 'jdk',
    version      => 'latest',
  }

	class { 'activemq':
	  webconsole              => true,
	  stomp_user              => 'user',
	  stomp_passwd            => 'Porter01',
	  stomp_admin             => 'admin',
	  stomp_adminpw           => 'Porter01',
	  activemq_mem_min        => '1G',
	  activemq_mem_max        => '1G', 
	  activemq_binary_version => 'apache-activemq-5.7.0',
	}
}