# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 22, host: 2223

  # influxdb
  config.vm.network "forwarded_port", guest: 8083, host: 8083
  config.vm.network "forwarded_port", guest: 8086, host: 8086
  config.vm.network "forwarded_port", guest: 8090, host: 8090
  config.vm.network "forwarded_port", guest: 8099, host: 8099

  # consul
  config.vm.network "forwarded_port", guest: 8600, host: 8600

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.network "private_network", ip: "192.168.33.20"
  # config.vm.network "public_network"
  # config.vm.synced_folder "../data", "/vagrant_data"
  # config.vm.provider "virtualbox" do |vb|
  #   vb.gui = true
  #   vb.memory = "1024"
  # end

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  config.vm.hostname = 'vagrant.local'
  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'site.yml'
    ansible.sudo = true
#    ansible.inventory_path = 'inventory/vagrant-inventory'
    ansible.host_key_checking = false
  end
end
