# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Vagrant-omnibus plugin - vagrant plugin install vagrant-omnibus
  config.omnibus.chef_version = :latest

  config.vm.hostname = "read-the-docs-berkshelf"

  config.vm.box = 'lucid64'
  config.vm.box_url = 'http://files.vagrantup.com/lucid64.box'

  config.vm.network :private_network, ip: "33.33.33.10"

  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.run_list = ["recipe[read-the-docs::default]"]
  end
end
