
Vagrant.configure("2") do |config|
 
  config.vm.box = "bento/ubuntu-18.04"

  config.vm.define "control" do |control|
    control.vm.provider "virtualbox" do |vbox|
      vbox.name = "control-node"
      vbox.memory = "1042"
      vbox.cpus = "1"
    end
    control.vm.hostname = "controle-node"
    control.vm.network "private_network", ip: "10.0.55.3", virtualbox__intnet: "myNetwork"
    # install Ansible on the control node
    control.vm.provision "shell", path: "scripts/ansible_install.sh", privileged: true
    # copy over pv/pub keys under /home/vagrant/.ssh
    control.vm.provision "file", source: ".ssh/id_rsa", destination: "/home/vagrant/id_rsa"
    control.vm.provision "file", source: ".ssh/id_rsa.pub", destination: "/home/vagrant/id_rsa.pub"
    control.vm.provision "shell", path: "scripts/add_keys.sh"
  end

  config.vm.define "managed" do |managed|
    managed.vm.provider "virtualbox" do |vbox|
      vbox.name = "managed-node"
      vbox.memory = "2048"
      vbox.cpus = "1"
    end
    managed.vm.hostname = "managed-node"
    managed.vm.network "private_network", ip: "10.0.55.4", virtualbox__intnet: "myNetwork"
    # copy over & add the control node's public key to authorized keys
    managed.vm.provision "file", source: ".ssh/id_rsa.pub", destination: "/home/vagrant/id_rsa.pub"
    managed.vm.provision "shell", path: "scripts/add_to_authorized_keys.sh"
  end

end
