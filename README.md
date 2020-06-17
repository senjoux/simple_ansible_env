# simple_ansible_env
Ansible : Simple Ansible environment setup using vagrant 

Ansible environment :
- Ansible control node (where ansible is installed) -> 10.0.55.3
- Ansible managed node accessible via ssh by the control node  -> 10.0.55.4

Prequesites :
- Vagrant installed
- Virtualbox installed

To provision the nodes, in the directory where the Vagrantfile is located run :
$ vagrant up

To ssh access a node  :
$ vagrant ssh [vm_definetion_name]
E.g   
vagrant ssh control         

To destroy :
$ vagrant destroy

To suspend/save state :
$ vagrant suspend

To resume saved state :
$ vagrant resume

see https://www.vagrantup.com/docs/cli


