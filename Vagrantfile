# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "bento/rockylinux-9"

  config.vm.define :ntpserver do |ntpserver|
    ntpserver.vm.provision "shell", path: "ntpserver-bootstrap.sh"
    ntpserver.vm.hostname = "ntpserver.localnet"
    ntpserver.vm.network "private_network", ip: "192.168.56.10"
  end

  config.vm.define :ntpclient do |ntpclient|
    ntpclient.vm.provision "shell", path: "ntpclient-bootstrap.sh"
    ntpclient.vm.hostname = "ntpclient.localnet"
    ntpclient.vm.network "private_network", ip: "192.168.56.11"
  end


  config.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
    #   vb.gui = true
    #
    vb.memory = "512"
    vb.cpus = "1"
  end
  #
  # config.vm.provision "shell", path: "bootstrap.sh"
end
