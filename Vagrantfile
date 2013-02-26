Vagrant::Config.run do |config|

  config.vm.box = "ubuntu12"

  # Assign this VM to a host only network IP, allowing you to access it
  # via the IP.
  config.vm.network :hostonly, "10.0.10.34"

  # Configure DNS according with the new version of vagrant
  config.vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  config.vm.forward_port 8161, 8161
  config.vm.forward_port 6166, 6166
  config.vm.forward_port 6163, 6163
  #config.vm.forward_port 8125, 8125, { :protocol => 'udp' }


  config.vm.provision :puppet do |puppet|
    puppet.module_path    = "modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "base.pp"
  end
end
