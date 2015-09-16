# -*- mode: ruby -*-
# vi: set ft=ruby :

VB_NAME = "vagrant-geo"
CPUS = 1
MEMORY = "2048"

Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = VB_NAME
    config.vm.host_name = VB_NAME
    config.vm.network "forwarded_port", guest: 8888, host: 8888

    config.vm.provider "virtualbox" do |vb|
        vb.memory = MEMORY
        vb.cpus = CPUS
        vb.gui = false
        vb.name = VB_NAME
    end

    config.vm.provision "shell", privileged: false, path:"provision.sh"
end
