Vagrant.configure("2") do |config|
  config.vm.hostname = "readthedocs"
  config.vm.box = "vagrant1.x-vbox4.2.x-ubuntu-precise-chef"
  config.vm.box_url = "http://nebula.ofc.lair/vagrant/boxes/#{config.vm.box}.box"

  config.vm.network :private_network, ip: "33.33.33.10"

  config.vm.provider :virtualbox do |vm|
    vm.name = 'readthedocs'
    vm.customize [
      "modifyvm", :id,
      "--memory", "1536",
      "--cpus", 2,
      "--audio", "none"
    ]
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = '../'
    chef.run_list = ["recipe[readthedocs]"]
  end

end
